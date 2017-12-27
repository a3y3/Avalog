module EmailSender
	def self.send_email
		UserMailer.send_email.deliver_now
	end
end
