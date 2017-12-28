class UserMailer < ApplicationMailer
	def send_email
		mail(to: 'tejas@avalonlabs.co', subject: 'Reminder: show up to work!')
	end
end
