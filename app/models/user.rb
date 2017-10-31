class User < ApplicationRecord

	before_create :confirmation_token

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

         validates :date_of_birth, :first_name, :last_name, presence: true
    
  has_many :albums 

	after_create :welcome_send
	def welcome_send
		WelcomeMailer.welcome_send(self).deliver
	  #redirect_to root_path, alert: "thanks for signup"
	end
  
  end