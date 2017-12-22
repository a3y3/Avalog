module WelcomeHelper
	def display_forms
		if(@plan.present?) 
			form_for(@plan) do |f|
				((f.text_field :accomplishment) +
			 	(f.submit "Add accomplishment")).html_safe
			end
		else
			form_for(:plan, url: plans_path) do |f| 
				((Time.now.strftime("%d/%m/%Y")) +
				
				(f.text_field :ambition) +
				(f.submit "Ambition button")).html_safe
			end
		end
	end
end