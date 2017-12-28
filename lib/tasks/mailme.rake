task :mailme => :environment do
  UserMailer.send_email.deliver_now
  #puts "asdasdadad"
end