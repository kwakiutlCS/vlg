Feature: In order to have the correct armours
	  As an admin
	  I want to be able to edit them
	  
	  Background:
	  Given the following users exist:
	  |name|email|password|admin|
	  |palerma|p@p.pt|password|false|
	  |admin|p@f.pt|password|true|
	  Given there is a armours item named "shield"
	  	  

	  Scenario: delete  as an admin
	  And I am signed in as "admin"
	  When I am on the homepage
	  And I follow "Admin"
	  And I follow "Armour"
	  And I follow "shield"
	  And I follow "Edit armour"
	  When I fill in "Name" with "helmet"
	  And I press "Update Armours item"
	  Then I should see "helmet"
	  And I should not see "shield"
	  And I should see "Item updated"

	  