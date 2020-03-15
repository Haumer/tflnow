namespace :api do
  desc "Check Tfl Api every 10 mins"
  task :check_tfl => :environment do
    puts "Starting the check..."
    start_time = Time.now
    CheckTflJob.perform_later
    end_time = Time.now
    puts "...done! Updated accordingly! (#{end_time - start_time}s)"
  end
end

namespace :ping do
  desc "ping tflnow every 10 mins"
  task :tflnow => :environment do
    puts "Starting ping..."
    start_time = Time.now
    open("http://tflnow.herokuapp.com/")
    end_time = Time.now
    puts "...done! successfully pinged! (#{end_time - start_time}s)"
  end
end
