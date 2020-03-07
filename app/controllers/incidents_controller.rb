class IncidentsController < ApplicationController
  def show
    @incident = Incident.find(params[:id])
    @line = Line.find(params[:line_id])
    @stations = @line.stations

    @stations.select do |station|
      @incident.reason.downcase.include?(station.name.downcase)
    end.each do |sstation|
      sstation.update!(status: "Fault")
    end

    @stations.reject do |station|
      @incident.reason.downcase.include?(station.name.downcase)
    end.each do |sstation|
      sstation.update!(status: "Good Service")
    end
    raise
    @stations = @stations.sort_by { |e| e.station_lines }
  end

  def index
    @incidents = Incident.all
  end
end
