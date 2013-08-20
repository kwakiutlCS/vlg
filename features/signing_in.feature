Feature: In order to enjoy the website
	  As a user
	  I want to be able to sign in

	  
	  Background:
	  Given the following users exist:
	  |name | email | password | admin |
	  |palerma | p@p.pt | 123456 | false |
	  Given I am on the homepage
	  And I follow "Sign in"
	  

	  Scenario: correct log in
	  And I fill in "Name" with "palerma"
	  And I fill in "Password" with "123456"
	  And I press "Sign in"
	  Then I should see "Signed in as palerma"
	  And I should see "Signed in successfully"
	  

	  Scenario: No name
	  And I fill in "Name" with "outro"
	  And I fill in "Password" with "123456"
	  And I press "Sign in"
	  And I should see "Invalid username or password"

	  