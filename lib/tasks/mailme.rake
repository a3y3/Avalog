task :mailme => :environment do
  # HardWorker.perform_async
  #puts "asdasdadad"
  UserMailer.send_email.deliver_now!
end