class LinesController < ApplicationController
  def show
    @line = Line.find(params[:id])
    @incidents = @line.incidents.order(created_at: :desc)
    @stations = @line.ordered_stations
  end
end
