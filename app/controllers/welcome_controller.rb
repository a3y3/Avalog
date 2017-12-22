class WelcomeController < ApplicationController
  def index
  	@plan = Plan.find_by(user_id: current_user.id)
  end
end
