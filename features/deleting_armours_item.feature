Feature: In order to have the correct armours
	  As an admin
	  I want to be able to remove them
	  
	  Background:
	  Given the following users exist:
	  |name|email|password|admin|
	  |palerma|p@p.pt|password|false|
	  |admin|p@f.pt|password|true|
	  Given there is a armours item named "shield"
	  	  

	  Scenario: edit as an admin
	  And I am signed in as "admin"
	  When I am on the homepage
	  And I follow "Admin"
	  And I follow "Armour"
	  And I follow "shield"
	  And I follow "Delete armour"
	  And I should not see "shield"
	  And I should see "Item deleted"

	  