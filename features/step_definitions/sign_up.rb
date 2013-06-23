Given(/^I'm on the Beta Landing page$/) do
  visit '/'
  OmniAuth.config.test_mode = true
end

When(/^I click the signup button$/) do
  #click_link 'Signup With Tumblr'
  OmniAuth.config.mock_auth[:tumblr] = {
	      "provider"=>"tumblr",
	      "uid"=>"tmblrb",
	      "user_info"=>{"username"=>"tmblrb", "avatar"=>"link"}
	}

end

Then(/^I should see the Main Page$/) do
	visit main_path
	find('h1').should have_content 'Logged'
  	OmniAuth.config.test_mode = false
end
