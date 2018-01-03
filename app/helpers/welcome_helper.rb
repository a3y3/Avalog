module WelcomeHelper
	def show_users_path_if_admin
		(if logged_in?(:admin, :manager)
			("Note: Our systems have detected that you are an admin. You can ") +
			(link_to "view all users", custom_users_path) +
			(" here <br>")
		end).html_safe
	end
end