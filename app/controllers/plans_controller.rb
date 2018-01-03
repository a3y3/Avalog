class PlansController < ApplicationController
	def create
		params[:plan][:ambition].each_line.each do |plan|
			Plan.create(ambition: plan, user_id: current_user.id, date: Time.now.strftime("%d/%m/%Y"))
		end
		redirect_to root_path
	end

	def update
		set_plan

		if(@plan.update!(params.require(:plan)
								.permit(:accomplishment, :ambition)
								.merge(:user_id => current_user.id,
										:date => Time.now.strftime("%d/%m/%Y"))))
			redirect_to root_path
		else
			render plain: "error"
		end
	end

	def set_checkbox
		plan = Plan.find(params[:plan_id])
		if(current_user.plans.find(plan.id))
			if(plan.checkbox == true)
				 plan.update!(checkbox: false)
	    	else
	    		plan.update!(checkbox: true)
	    	end
	    end
	    redirect_to root_path
	end

	private 
	def set_plan
		@plan = Plan.find(params[:id])
	end
end
