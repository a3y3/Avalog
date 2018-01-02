class PlansController < ApplicationController
	def create
		# @plan = current_user.plans.build() -Gives an error when parameters are added
		@plan = Plan.new(params.require(:plan)
						.permit(:ambition)
						.merge(:user_id => current_user.id,
								:date => Time.now.strftime("%d/%m/%Y")))
		if(@plan.save)
			redirect_to root_path
		else
			render plain: "error"
		end
	end

	def update
		set_plan
		if(@plan.update!(params.require(:plan).permit(:accomplishment)))
			redirect_to root_path
		else
			render plain: "error"
		end
	end

	def set_checkbox
		plan = Plan.find(params[:plan_id])
		if(Department.plans.find(plan.id))
			if(plan.checkbox == true)
				 plan.update!(checkbox: false)
	    	else
	    		plan.update!(checkbox: true)
	    	end
	    end
	end

	private #try setting insert_checkbox to private
	def set_plan
		@plan = Plan.find(params[:id])
	end
end
