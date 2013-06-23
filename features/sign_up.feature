Feature: User sign up using Tumblr account
	In order to sign up for TmblrBot
	As a visitor
	I want to have a button to sign up with Tumblr

	Scenario: User allows Tumblr access
		Given I'm on the Beta Landing page
		When I click the signup button
		Then I should see the Main Page



