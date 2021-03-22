require 'open-uri'

class TflClient
  attr_reader :response
  BASE_URL = 'https://api.tfl.gov.uk/line/mode/tube,overground,dlr,tflrail/status'.freeze

  def initialize
    @response ||= nil
  end

  def fetch
    @response = JSON.parse(HTTP.get(BASE_URL))
    self
  end
end
