require "open-uri"

class Line < ApplicationRecord
  has_many :incidents, dependent: :destroy
  has_many :branches, dependent: :destroy
  has_many :station_lines, through: :branches
  has_many :stations, through: :station_lines

  validates :name, presence: true

  def self.api_status?
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

  def self.ordered_by_incidents
    Line.joins(:incidents).group('lines.id').order('COUNT(lines.id) DESC')
  end
end
