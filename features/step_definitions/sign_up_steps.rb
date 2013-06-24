
Given(/^I'm a visitor in Beta Landing Page$/) do
  visit '/'
  OmniAuth.config.test_mode = true
end


When(/^I click the signup button$/) do
  #click_link 'Sign Up With Tumblr'
   OmniAuth.config.mock_auth[:tumblr] = {
      "provider"=>"tumblr",
      "uid"=>"tmblrb",
      "user_info"=>{"username"=>"tmblrb", "first_name"=>"Test"}
  }
end

Then(/^I should be registered with the site$/) do
	OmniAuth.config.test_mode = false
	visit '/main'
	find('h1').should have_content 'Promo Feed'
end