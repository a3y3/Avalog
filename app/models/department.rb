class Department < ApplicationRecord
	has_many :users
	has_many :plans, through: :users
end
