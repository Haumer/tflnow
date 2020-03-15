namespace :ping do
  desc "ping tflnow every 10 mins"
  task :tflnow => :environment do
    puts "Starting ping..."
    start_time = Time.now
    open("http://tflnow.herokuapp.com/")
    end_time = Time.now
    Ledger::Uptime.next_occurance ["occured", DateTime.now]
    puts "...successfully pinged! (#{end_time - start_time}s)"
    puts Ledger::Uptime
  end
end
