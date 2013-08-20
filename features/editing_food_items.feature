Feature: In order to have the correct food
	  As an admin
	  I want to be able to edit them
	  
	  Background:
	  Given the following users exist:
	  |name|email|password|admin|
	  |palerma|p@p.pt|password|false|
	  |admin|p@f.pt|password|true|
	  Given there is a food item named "bread"
	  	  

	  Scenario: edit as an admin
	  And I am signed in as "admin"
	  When I am on the homepage
	  And I follow "Admin"
	  And I follow "Food items"
	  And I follow "bread"
	  And I follow "Edit Food item"
	  When I fill in "Name" with "beer"
	  And I press "Update Food item"
	  Then I should see "beer"
	  And I should not see "bread"
	  And I should see "Item updated"

	  