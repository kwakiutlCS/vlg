Feature: In order to have the correct materials
	  As an admin
	  I want to be able to remove them
	  
	  Background:
	  Given the following users exist:
	  |name|email|password|admin|
	  |palerma|p@p.pt|password|false|
	  |admin|p@f.pt|password|true|
	  Given there is a materials item named "clay"
	  	  

	  Scenario: edit as an admin
	  And I am signed in as "admin"
	  When I am on the homepage
	  And I follow "Admin"
	  And I follow "Materials"
	  And I follow "clay"
	  And I follow "Delete material"
	  And I should not see "clay"
	  And I should see "Item deleted"

	  