class PlansController < ApplicationController
	def create
		render plain: params[:plan].inspect
	end
end
