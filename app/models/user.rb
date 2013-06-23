class User < ActiveRecord::Base

  has_many :blogs
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable


  # Setup accessible (or protected) attributes for your model
  attr_accessor :email, :password, :password_confirmation, :remember_me


	def self.find_for_oauth(auth)
	    record = where(tumblr_name: auth.uid.to_s).first
	    record || create(tumblr_name: auth.uid, email: 'user@email.com', password: Devise.friendly_token[0,20])
	end

end
