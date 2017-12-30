class UserMailer < ApplicationMailer
	def send_email
		mail(to: 'anantcool19@gmail.com', subject: 'Reminder: show up to work!')
	end
end
