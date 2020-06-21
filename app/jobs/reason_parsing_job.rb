class ReasonParsingJob < ApplicationJob
  queue_as :default

  def perform
    puts "Starting: <================================================="
    # find all incidents which are less than 2 days old
    incidents = Incident.where(
      created_at: 2.days.ago..DateTime::Infinity.new,
      parsed: false
    )
    incidents.find_each do |incident|
      # Check is the Reason already exists
      reason = find_or_create_reason(incident)
      create_incident_reason(reason, incident)
    end
    puts "=======================================================> End"
  end

  private

  def find_or_create_reason(incident)
    reason = nil
    if found_incident_reason?(incident)
      reason = Reason.create!(content: incident.reason.strip)
      update_reason_severity(incident)
      puts "NEW #{reason.content}"
    else
      puts ">> #{incident.reason.strip} << already exists!"
      reason = Reason.find_by_content(incident.reason.strip)
    end
    incident.update(parsed: true)
    reason
  end

  def create_incident_reason(reason, incident)
    if found_incident_reason?(reason)
      incident_reason = IncidentReason.create(reason: reason, incident: incident)
      affected_stations = Station.all.select do |station|
        incident.reason.downcase.include?(station.name.downcase)
      end
      affected_stations(incident_reason, affected_stations) if affected_stations.length > 1
    end
  end

  def found_reason?(incident)
    # FIXME: doesnt work for Hammersmith and Waterterloo => '&' in name (maybe highbury and islington too?)
    Reason.find_by_content(incident.reason.strip).nil?
  end

  def found_incident_reason?(reason)
    IncidentReason.where(reason: reason, incident: incident).empty?
  end

  def affected_stations(incident_reason, affected_stations)
    incident_reason.start_station = affected_stations[0].position
    incident_reason.end_station = affected_stations[1].position
    incident_reason.save
  end

  def update_reason_severity(incident)
    severity = incident.reason.match(/severe\s?(\w+)/i)[0] unless incident.reason.match(/severe\s?(\w+)/i).nil?
    severity = incident.reason.match(/minor\s?(\w+)/i)[0] unless incident.reason.match(/severe\s?(\w+)/i).nil?
    reason.update(severity: severity)
  end
end
