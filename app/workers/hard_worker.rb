class HardWorker
  include Sidekiq::Worker

  def perform()
    # Do something
    UserMailer.send_email.deliver_now!
  end
end
