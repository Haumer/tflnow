namespace :parse do
  desc "parse the incidents for reasons"
  task :reasons => :environment do
    puts "Starting to parse..."
    start_time = Time.now
    ReasonParsingJob.perform_now
    end_time = Time.now
    Ledger::Reasons.next_occurance DateTime.now
    puts "...successfully parse! (#{end_time - start_time}s)"
  end

  desc "parse the incidents for station incidents"
  task :station_incidents => :environment do
    puts "Starting to parse..."
    UpdateStationIncidentsJob.perform_now
    puts "...successfully parse! (#{end_time - start_time}s)"
  end
end
