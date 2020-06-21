class UpdateStationIncidentsJob < ApplicationJob
  queue_as :default

  def perform
    incidents = incidents_less_than_2_days_ago
    incidents.each do |incident|
      incident.line.stations.each do |station|
        if incident_inlcudes_station_name?(station, incident)
          StationIncident.create(
            station: station,
            incident: incident
          )
        end
      end
    end
  end

  def incidents_less_than_2_days_ago
    Incident.where(created_at: 2.days.ago..DateTime::Infinity.new)
  end

  def incident_inlcudes_station_name?(station, incident)
    incident.reason.split(/:/).last.include?(station.name)
  end
end
