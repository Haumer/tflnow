namespace :parse do
  desc "ping tflnow every 10 mins"
  task :reasons => :environment do
    puts "Starting to parse..."
    start_time = Time.now
    ReasonParsingJob.perform_now
    end_time = Time.now
    Ledger::Reasons.next_occurance DateTime.now
    puts "...successfully parse! (#{end_time - start_time}s)"
    puts Ledger::Reasons
  end
end
