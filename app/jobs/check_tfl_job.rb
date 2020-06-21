require "open-uri"

class CheckTflJob < ApplicationJob
  queue_as :default

  def perform
    url = "https://api.tfl.gov.uk/line/mode/tube,overground,dlr,tflrail/status"
    JSON.parse(open(url).read).each do |line|
      if status_changed_or_new_day?(line)
        found_line = Line.find_by_name(line["name"])
        found_line.update(status: line["lineStatuses"].first["statusSeverityDescription"], last_update: line["lineStatuses"].first["created"])
        if changed_10_mins_ago?(line)
          Incident.create(line: found_line, reason: line['lineStatuses'].first['reason'], status: line["lineStatuses"].first["statusSeverityDescription"])
        end
      end
    end
  end

  private

  def status_changed_or_new_day?(line)
    return if line.nil? || line.empty?

    check_line = Line.find_by_name(line["name"])
    status = line["lineStatuses"].first["statusSeverityDescription"]
    check_line.status != status || check_line.last_update < DateTime.now - 1.day
  end

  def changed_10_mins_ago?(line)
    return if line.nil? || line.empty?

    check_line = Line.find_by_name(line["name"])
    check_line.last_update < DateTime.now - 10.minutes
  end
end
