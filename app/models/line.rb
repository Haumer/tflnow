require "open-uri"

class Line < ApplicationRecord
  has_many :incidents, dependent: :destroy
  has_many :station_lines
  has_many :stations, through: :station_lines

  def self.status_api?
    url = "https://api.tfl.gov.uk/line/mode/tube,overground,dlr,tflrail/status"
    req = open(url)
    response = req.read
    json = JSON.parse(response)
    json.reject do |line|
      line['lineStatuses'].first['statusSeverityDescription'] == 'Good Service'
    end.empty?
  end

  def ordered_stations
    self.station_lines.where(line: self).order(position: :asc).map(&:station)
  end
end
