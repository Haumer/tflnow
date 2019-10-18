require "open-uri"

class Line < ApplicationRecord
  has_many :incidents, dependent: :destroy
  has_many :station_lines
  has_many :stations, through: :station_lines

  def self.status_api
    url = "https://api.tfl.gov.uk/line/mode/tube,overground,dlr,tflrail/status"
    req = open(url)
    response = req.read
    json = JSON.parse(response)
    json.reject do |line|
      p line
      line['lineStatuses'].first['statusSeverityDescription'] == 'Good Service'
    end.empty?
  end
end
