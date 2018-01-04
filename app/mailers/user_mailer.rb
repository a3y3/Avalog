class UserMailer < ApplicationMailer
	def send_email(email)
		mail(to: email, subject: 'Reminder: Open Avalog!')
	end
end
