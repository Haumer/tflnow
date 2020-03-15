class UpdateStationIncidentsJob < ApplicationJob
  queue_as :default

  def perform
    incidents = Incident.all
    incidents.each do |incident|
      line = incident.line
      found = line.stations.select do |station|
        incident.reason.split(/:/).last.include?(station.name)
      end
      p found
      p incident.reason
    end
  end
end
