class UserMailer < ApplicationMailer
	def send_email
		mail(to: 'sohamssd@gmail.com', subject: 'Reminder: show up to work!')
	end
end
