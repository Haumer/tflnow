class PagesController < ApplicationController
  def home
    CheckTflJob.perform_now
    @good_lines = Line.where(status: "Good Service").order("LENGTH(name) ASC") + Line.where(status: "Service Closed").order("LENGTH(name) ASC")
    @bad_lines = Line.where.not(status: "Good Service").order("LENGTH(name) ASC") - Line.where(status: "Service Closed").order("LENGTH(name) ASC")
    @incidents = Incident.all
  end

  def map

  end
end
