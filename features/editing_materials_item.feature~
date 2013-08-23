Feature: In order to have the correct weapons
	  As an admin
	  I want to be able to edit them
	  
	  Background:
	  Given the following users exist:
	  |name|email|password|admin|
	  |palerma|p@p.pt|password|false|
	  |admin|p@f.pt|password|true|
	  Given there is a weapons item named "axe"
	  	  

	  Scenario: delete  as an admin
	  And I am signed in as "admin"
	  When I am on the homepage
	  And I follow "Admin"
	  And I follow "Weapons"
	  And I follow "axe"
	  And I follow "Edit weapons"
	  When I fill in "Name" with "sword"
	  And I press "Update Weapons item"
	  Then I should see "sword"
	  And I should not see "axe"
	  And I should see "Item updated"

	  