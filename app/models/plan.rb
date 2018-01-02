class Plan < ApplicationRecord
	belongs_to :user, optional: true
	after_initialize :init

	def init
		self.checkbox ||= false
	end
end
