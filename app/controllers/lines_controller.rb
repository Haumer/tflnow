class LinesController < ApplicationController
  def show
    @line = Line.find(params[:id])
    @incidents = @line.incidents
  end
end
