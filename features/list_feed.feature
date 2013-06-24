Feature: List all users in the feed
	In order to follow other users
	As a logged user
	I want to see all the users that will follow back




	Scenario: List the users that posted promos
		Given I'm a logged user
		When I'm at Main page
		Then I should see all the users to follow

	Scenario: Give me a logout option
		Given I'm a logged user
		When I'm at Main page
		Then give me a button to logout

	Scenario: Every blog on the list shows his atributes
		Given I'm a logged user
		When I'm at Main page
		Then I should see each user's blog avatar
		And I should see each blog's name
		And I should see each blog's link
		And I should see each blog's description
		And I should see each blog's follow link