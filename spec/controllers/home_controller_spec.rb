require 'spec_helper'

describe HomeController do

	before do
		request.env["omniauth.auth"] = {:uid => 'tmblrb'}
	end


	it "routes /auth/:provider/callback" do
		{ :post => "/auth/tumblr/callback" }.should route_to(
		  :controller => "users",
		  :action => "check")
	end

	it "creates new user when POST create" do
		@user = User.create!(:email => 'user@email.com', :password => 'password', :tumblr_name => 'tmblrb', :points => 0, :featured => false, :token => 'ljaksbd', :secret => 'laksdblkja')
		@user.blogs.create!(:name => 'my_blog', :description => 'big ass text.....', :followers => 1234)
	end

	it "logs users in" do
		new_user_session_path
	end

end
