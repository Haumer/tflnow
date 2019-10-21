namespace :api do
  desc "Enriching all users with Clearbit (async)"
  task :check_tfl => :environment do
    puts "Starting the check..."
    CheckTflJob.perform_later
    puts "...done! Updated accordingly."
  end
end
