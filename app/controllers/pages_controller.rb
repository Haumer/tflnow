class PagesController < ApplicationController
  def home
    # CheckTflJob.perform_now # uncomment if no sidekiq or redis active
    @good_lines = Line.where(status: "Good Service").order("LENGTH(name) ASC") + Line.where(status: "Service Closed").order("LENGTH(name) ASC")
    @bad_lines = Line.where.not(status: "Good Service").order("LENGTH(name) ASC") - Line.where(status: "Service Closed").order("LENGTH(name) ASC")
    @incidents = Incident.all
  end

  def map

  end

  def panel
    @stations = Station.ordered_by_station_incidents
    @lines = Line.ordered_by_incidents
    @ledger = Ledger
    @reasons = Reason.ordered_by_incident_reasons
    @severities = Reason.where.not(severity: nil).group(:severity).count
    CheckTflJob.perform_later if params[:api]
    ReasonParsingJob.perform_later if params[:reason]
  end
end
