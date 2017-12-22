class WelcomeController < ApplicationController
  def index
  	@plans = Plan.where(user_id: current_user.id)
  	@plan = @plans.find_by(date: Time.now.strftime("%d/%m/%Y"))
  end
end
