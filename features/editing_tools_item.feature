Feature: In order to have the correct tools
	  As an admin
	  I want to be able to edit them
	  
	  Background:
	  Given the following users exist:
	  |name|email|password|admin|
	  |palerma|p@p.pt|password|false|
	  |admin|p@f.pt|password|true|
	  Given there is a tools item named "hammer"
	  	  

	  Scenario: delete  as an admin
	  And I am signed in as "admin"
	  When I am on the homepage
	  And I follow "Admin"
	  And I follow "Tools"
	  And I follow "hammer"
	  And I follow "Edit tool"
	  When I fill in "Name" with "saw"
	  And I press "Update Tools item"
	  Then I should not see "hammer"
	  And I should see "saw"
	  And I should see "Item updated"

	  