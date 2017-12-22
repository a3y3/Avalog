class WelcomeController < ApplicationController
  def index
  	@plans = current_user.plans
  	@plan = @plans.find_by(date: Time.now.strftime("%d/%m/%Y"))
  end
end
