class LinesController < ApplicationController
  def show
    @line = Line.find(params[:id])
    @incidents = @line.incidents
    @stations = @line.stations
  end
end
