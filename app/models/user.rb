class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable,:recoverable, :lockable, :timeoutable, :trackable, and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  validates :username, :first_name, :last_name, presence: true
  validates :username, length: { minimum: 2 }
  validates :username, length: { maximum: 7 }
  validates :password, length: { in: 6..20 }
  validates :email, :user, uniqueness: true

	def full_name
		first_name.capitalize + " " + last_name.capitalize        	
	end         
end
