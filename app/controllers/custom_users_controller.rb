class CustomUsersController < ApplicationController
	access admin: :all, manager: :all
	def index
		@users = User.all
		@departments = Department.all
	end

	def show
		@user = User.find(params[:id])
		if(logged_in?(:manager) && current_user.id != @user.id)
			redirect_to root_path
		end
		@plans = @user.plans
	  	@dates = @plans.group(:date).map(&:date).uniq
	  	@plans_for_today = @plans.where(date: Time.now.strftime("%d/%m/%Y"))
	end
end
