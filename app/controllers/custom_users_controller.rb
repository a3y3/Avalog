class CustomUsersController < ApplicationController
	access admin: :all, manager: :all
	def index
		@users = User.all
		@departments = Department.all
	end

	def show
		@users = User.find(params[:id])
		@plans = @users.plans
	end
end
