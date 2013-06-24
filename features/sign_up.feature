Feature: User sign up using Tumblr account
	In order to sign up for TmblrBot
	As a visitor
	I want to have a button to sign up with Tumblr



	Scenario: User registers with Tumblr
		Given I'm a visitor in Beta Landing Page
		When I click the signup button
		Then I should be registered with the site


