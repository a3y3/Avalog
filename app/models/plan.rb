class Plan < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :department
	after_initialize :init

	def init
		self.checkbox ||= false
	end
end
