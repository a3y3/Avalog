class CustomUserController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@users = User.all
		@plans = @users.plans
	end
end
