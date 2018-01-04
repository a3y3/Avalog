task :save_unfinished_tasks => :environment do
	users = User.all
	users.each do |user|
		@plans = user.plans
		@previous_plans = @plans.where.not(date: Time.now.strftime("%d/%m/%Y"))
	  	@unfinished_plans = @previous_plans.where(checkbox: false)
	  	@unfinished_plans.each do |unfinished_plan|
  			Plan.create(ambition: unfinished_plan.ambition, user_id: user.id, date: Time.now.strftime("%d/%m/%Y"))
  		end	
  	end
end