class LinesController < ApplicationController
  def show
    @line = Line.find(params[:id])
    @incidents = @line.incidents.order(created_at: :desc)
    @incident = @incidents.first
    @stations = @line.ordered_stations

    # find stations with incidents
    @station_incidents = @stations.select do |station|
      @incident.reason.downcase.include?(station.name.downcase)
    end.each do |sstation|
      sstation.update!(status: "Fault")
    end

    # reset stations that dont have faults to Good Service
    @stations.reject do |station|
      @incident.reason.downcase.include?(station.name.downcase)
    end.each do |sstation|
      sstation.update!(status: "Good Service")
    end

    @stations.map(&:status).index("Fault")
    incident_start = @stations.map(&:status).index("Fault")
    incident_stop = @stations.reverse.map(&:status).index("Fault")
    if incident_start && incident_stop
      @stations[incident_start..-1 - incident_stop].each do |sstation|
        sstation.update!(status: "Fault")
      end
    end
  end
end
