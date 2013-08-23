Feature: In order to have the correct tools
	  As an admin
	  I want to be able to remove them
	  
	  Background:
	  Given the following users exist:
	  |name|email|password|admin|
	  |palerma|p@p.pt|password|false|
	  |admin|p@f.pt|password|true|
	  Given there is a tools item named "axe"
	  	  

	  Scenario: edit as an admin
	  And I am signed in as "admin"
	  When I am on the homepage
	  And I follow "Admin"
	  And I follow "Tools"
	  And I follow "axe"
	  And I follow "Delete tool"
	  And I should not see "axe"
	  And I should see "Item deleted"

	  