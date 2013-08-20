Feature: In order to have the correct clothes
	  As an admin
	  I want to be able to edit them
	  
	  Background:
	  Given the following users exist:
	  |name|email|password|admin|
	  |palerma|p@p.pt|password|false|
	  |admin|p@f.pt|password|true|
	  Given there is a clothes item "shirt"
	  	  

	  Scenario: delete  as an admin
	  And I am signed in as "admin"
	  When I am on the homepage
	  And I follow "Admin"
	  And I follow "Clothes"
	  And I follow "shirt"
	  And I follow "Edit clothes"
	  When I fill in "Name" with "trousers"
	  And I press "Update Clothes item"
	  Then I should see "trousers"
	  And I should not see "shirt"
	  And I should see "Item updated"

	  Scenario: hidden link
	  And I am signed in as "palerma"
	  When I am on the homepage
	  Then I should not see "Admin"