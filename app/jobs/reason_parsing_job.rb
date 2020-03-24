class ReasonParsingJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Starting: <================================================="
    incidents = Incident.where(created_at: 2.days.ago..DateTime::Infinity.new )
    incidents.find_each do |incident|
      # NOTE: doesnt work for Hammersmith and Waterterloo => '&' in name (maybe highbury and islington too?)
      if incident.reason.downcase.split(":").first.include?(incident.line.name.downcase)
        reason = nil
        # Check is the Reason already exists
        if Reason.find_by_content(incident.reason.split(":").last.strip).nil?
          reason = Reason.create!(content: incident.reason.split(":").last.strip)
          severity = incident.reason.match(/severe\s?(\w+)/i)[0] unless incident.reason.match(/severe\s?(\w+)/i).nil?
          severity = incident.reason.match(/minor\s?(\w+)/i)[0] unless incident.reason.match(/severe\s?(\w+)/i).nil?
          reason.update(severity: severity)
          puts "NEW #{reason.content}"
        else
          puts ">> #{incident.reason.strip} <<already exists!"
          reason = Reason.find_by_content(incident.reason.strip)
        end
        IncidentReason.create(reason: reason, incident: incident)
      else
        reason = nil
        # Check is the Reason already exists
        if Reason.find_by_content(incident.reason.strip).nil?
          reason = Reason.create!(content: incident.reason.strip)
          severity = incident.reason.match(/severe\s?(\w+)/i)[0] unless incident.reason.match(/severe\s?(\w+)/i).nil?
          severity = incident.reason.match(/minor\s?(\w+)/i)[0] unless incident.reason.match(/severe\s?(\w+)/i).nil?
          reason.update(severity: severity)
          puts "NEW #{reason.content}"
        else
          puts ">> #{incident.reason.strip} <<already exists!"
          reason = Reason.find_by_content(incident.reason.strip)
        end
        IncidentReason.create(reason: reason, incident: incident)
      end
    end
    puts "=======================================================> End"
  end
end
