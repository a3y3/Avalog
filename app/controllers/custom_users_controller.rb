class CustomUsersController < ApplicationController
	access root_admin: :all
	def index
		@users = User.all
	end

	def show
		@users = User.find(params[:id])
		@plans = @users.plans
	end
end
