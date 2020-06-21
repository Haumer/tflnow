class StationsController < ApplicationController
  def search
  end

  def show
    @station = Station.find(params[:id])
    @lines = @station.lines
  end
end
