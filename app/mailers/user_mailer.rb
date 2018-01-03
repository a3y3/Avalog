class UserMailer < ApplicationMailer
	def send_email(email)
		mail(to: email, subject: 'Reminder: show up to work!')
	end
end
