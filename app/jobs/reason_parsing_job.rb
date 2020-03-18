class ReasonParsingJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Starting: <================================================="
    Incident.all.each do |incident|
      # NOTE: doesnt work for Hammersmith and Waterterloo => '&' in name (maybe highbury and islington too?)
      if incident.reason.downcase.split(":").first.include?(incident.line.name.downcase)
        reason = Reason.create!(content: incident.reason.split(":").last.strip)
        p IncidentReason.create(reason: reason, incident: incident)
      else
        reason = Reason.create!(content: incident.reason)
        p IncidentReason.create(reason: reason, incident: incident)
      end
    end
    puts "=======================================================> End"
  end
end
