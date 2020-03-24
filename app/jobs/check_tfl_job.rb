require "open-uri"

class CheckTflJob < ApplicationJob
  queue_as :default

  def perform
    url = "https://api.tfl.gov.uk/line/mode/tube,overground,dlr,tflrail/status"
    req = open(url)
    response = req.read
    json = JSON.parse(response)
    json.each do |line|
      if Line.find_by_name(line["name"]).status != line["lineStatuses"].first["statusSeverityDescription"]
        line = Line.find_by_name(line["name"]).update(status: line["lineStatuses"].first["statusSeverityDescription"], last_update: line["lineStatuses"].first["created"])
        if line.last_update > Time.now - 10.minutes
          Incident.create(line: Line.where(name: line["name"]).first, reason: line['lineStatuses'].first['reason'], status: line["lineStatuses"].first["statusSeverityDescription"])
        end
      end
    end
  end
end
