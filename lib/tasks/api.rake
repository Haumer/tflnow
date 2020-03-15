namespace :api do
  desc "Check Tfl Api every 10 mins"
  task :check_tfl => :environment do
    puts "Starting the check..."
    start_time = Time.now
    CheckTflJob.perform_now
    end_time = Time.now
    Ledger::Api.next_occurance ["occured", DateTime.now]
    puts "...done! (#{end_time - start_time}s)"
  end
end
