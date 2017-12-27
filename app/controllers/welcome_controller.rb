class WelcomeController < ApplicationController
  def index
  	@plans = current_user.plans
  	@plan = @plans.find_by(date: Time.now.strftime("%d/%m/%Y"))
  end

  def send_email
  	UserMailer.send_email.deliver_now
  	redirect_to root_path
  end
end
