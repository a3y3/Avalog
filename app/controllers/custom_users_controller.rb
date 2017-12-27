class CustomUsersController < ApplicationController
	access admin: :all
	def index
		@users = User.all
	end

	def show
		@users = User.find(params[:id])
		@plans = @users.plans
	end
end
