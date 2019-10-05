require "open-uri"

class PagesController < ApplicationController
  def home
    url = "https://api.tfl.gov.uk/line/mode/tube,overground,dlr,tflrail/status"
    req = open(url)
    response = req.read
    json = JSON.parse(response)
    json.each do |line|
      if Line.where(name: line["name"]).first.status != line["lineStatuses"].first["statusSeverityDescription"]
        Line.where(name: line["name"]).first.update(
          status: line["lineStatuses"].first["statusSeverityDescription"],
          last_update: line["lineStatuses"].first["created"])
        if line["lineStatuses"].first['statusSeverityDescription'] != "Good Service" || line["lineStatuses"].first['statusSeverityDescription'] == "Service Closed"
          Incident.create(line: Line.where(name: line["name"]).first, reason: line['lineStatuses'].first['reason'])
        end
      end
    end
    @good_lines = Line.where(status: "Good Service").order("LENGTH(name) ASC") + Line.where(status: "Service Closed").order("LENGTH(name) ASC")
    @bad_lines = Line.where.not(status: "Good Service").order("LENGTH(name) ASC") - Line.where(status: "Service Closed").order("LENGTH(name) ASC")
    @incidents = Incident.all
  end

  def map

  end
end
