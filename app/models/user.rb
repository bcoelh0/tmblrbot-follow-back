class User < ActiveRecord::Base

  has_many :blogs
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessor :email, :password, :password_confirmation, :remember_me


	def set_params params
		self.tumblr_name = params[:uid]
	end

	def set_blogs params
		params[:extra][:raw_info][:blogs].each do |blog|
			self.blogs.create(:name => blog[:name])
		end
	end
end
