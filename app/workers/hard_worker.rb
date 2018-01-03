class HardWorker
  include Sidekiq::Worker

  def perform(args)
    # Do something
    UserMailer.send_email(args).deliver_now!
  end
end
