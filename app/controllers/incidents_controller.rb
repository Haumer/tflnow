class IncidentsController < ApplicationController
  def show
    @incident = Incident.find(params[:id])
    @incident.line = Line.find(params[:line_id])
  end
end
