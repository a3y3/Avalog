class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:admin, :editor, :manager], multiple: false)                                      ##
  ############################################################################################ 
 

	validates :name, :presence => true
  validates :timings, :presence => true
  validates :timings_end, :presence => true
  validates :department_id, :presence => true,
     :inclusion  => { :in => [ 1, 2,3 ],
     :message    => "%{value} is not a valid number" }


	has_many :plans
  belongs_to :department

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



end
