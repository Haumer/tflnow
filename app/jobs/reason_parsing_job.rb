class ReasonParsingJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Starting: ================================================="
    Incident.all.each do |incident|
      # NOTE: doesnt work for Hammersmith and Waterterloo => '&' in name (maybe highbury and islington too?)
      if incident.reason.downcase.split(":").first.include?(incident.line.name.downcase)
        p incident.reason.split(":").last.strip
      else
        p incident.reason
      end
    end
    puts "================================================= End"
  end
end
