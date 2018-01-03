task :mailme, [:email_id] => :environment do |t, args|
  HardWorker.perform_async(args.email_id)
  # puts "#{args.email_id}"
  #UserMailer.send_email(args).deliver_now!
end