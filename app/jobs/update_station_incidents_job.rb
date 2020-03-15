class UpdateStationIncidentsJob < ApplicationJob
  queue_as :default

  def perform
    incidents = Incident.all
    incidents.each do |incident|
      line = incident.line
      found = line.stations.each do |station|
        if incident.reason.split(/:/).last.include?(station.name)
          StationIncident.create(
            station: station,
            incident: incident
          )
        end
      end
    end
  end
end
