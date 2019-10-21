class IncidentsController < ApplicationController
  def show
    @incident = Incident.find(params[:id])
    @line = Line.find(params[:line_id])
    @stations = @line.stations

    @stations.select do |station|
      @incident.reason.downcase.include?(station.station_name.downcase)
    end.each do |sstation|
      sstation.update!(station_status: "Fault")
    end

    @stations.reject do |station|
      @incident.reason.downcase.include?(station.station_name.downcase)
    end.each do |sstation|
      sstation.update!(station_status: "Good Service")
    end

    @stations = @stations.sort_by { |e| e.station_number }
  end

  def index
    @incidents = Incident.all
  end
end
