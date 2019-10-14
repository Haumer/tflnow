class LinesController < ApplicationController
  def show
    @line = Line.find(params[:id])
    @incidents = @line.incidents.order(created_at: :desc)
    @stations = @line.stations
  end
end
