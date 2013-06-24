
Given(/^I'm a logged user$/) do
	@user = User.find(1)

end

When(/^I'm at Main page$/) do
	visit '/main'
end

Then(/^I should see all the users to follow$/) do
	page.should have_css 'ul.users'
end


#Scenario 2
When(/^I'm at any page$/) do
	visit '/main'
end

Then(/^give me a button to logout$/) do
	page.should have_css 'a#logout'
end

#Scenario 3

Then(/^I should see each user's blog avatar$/) do
	page.has_css?('img.user_avatar')
end

Then(/^I should see each blog's name$/) do
	page.has_css? 'a#blog_link'
end

Then(/^I should see each blog's link$/) do
	page.has_css? 'a#blog_link'
end

Then(/^I should see each blog's description$/) do
	page.has_css? 'p#blog_description'
end

Then(/^I should see each blog's follow link$/) do
	page.has_css? 'img#blog_follow'
end