require "open-uri"

class Line < ApplicationRecord
  has_many :incidents, dependent: :destroy
  has_many :branches, dependent: :destroy
  has_many :station_lines, through: :branches

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
    self.station_lines.joins(:branch).order(position: :asc).map(&:station)
  end
end
