class PagesController < ApplicationController
  def home
    # CheckTflJob.perform_now # uncomment if no sidekiq or redis active
    @good_lines = Line.where(status: "Good Service").order("LENGTH(name) ASC") + Line.where(status: "Service Closed").order("LENGTH(name) ASC")
    @bad_lines = Line.where.not(status: "Good Service").order("LENGTH(name) ASC") - Line.where(status: "Service Closed").order("LENGTH(name) ASC")
    @incidents = Incident.all
  end

  def map
  end

  def timeline
    @incident_series = Incident.all.group_by_day { |u| u.created_at }
  end

  def panel
    @stations = Station.ordered_by_station_incidents
    @lines = Line.ordered_by_incidents
    @ledger = Ledger
    @reasons = Reason.ordered_by_incident_reasons
    @severities = Reason.where.not(severity: nil).group(:severity).count
  end

  def check_tfl
    CheckTflJob.perform_now if current_user.admin?
    redirect_to panel_path
  end

  def parse_reasons
    ReasonParsingJob.perform_later if current_user.admin?
    redirect_to panel_path
  end
end
