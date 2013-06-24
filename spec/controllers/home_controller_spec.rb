require 'spec_helper'

describe HomeController do

	before do
		OmniAuth.config.mock_auth[:tumblr] = {
    		'uid' => 'tmblrb',
		    'provider' => 'tumblr',
		    'info' => {
		      'name' => 'Tmblr Bot'
		    }
		  }
		request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:tumblr]
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





end
