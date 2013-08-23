Feature: In order to be able to build stuff     
	  As an admin
	  I want to be able to create tools items through the interface


	  Background:
	  Given the following users exist:
	  |name | email | password |admin|
	  |admin| admin@p.pt| password | true |
	  |palerma | p@p.pt |password | false |
	  
	  

	  Scenario: Create tools item as admin
	  And I am signed in as "admin"
	  And I follow "Admin"
	  And I follow "Tools"
	  And I follow "Add tool"
	  And I fill in "Name" with "hammer"
	  And I fill in "Mass" with "1"
	  And I fill in "Decay" with "rags"
	  And I fill in "Assemble" with "{wood: 3}"
	  And I fill in "Tools" with "{hammer: 1}"
	  And I fill in "Assemble skills" with "{blacksmith: 10}"
	  And I fill in "Result" with "1"
	  And I press "Create Tools item"
	  Then I should see "New item created"
	  And I should see "hammer"
	  
	  
	  Scenario: Create tools item as admin wrong parameters
	  And I am signed in as "admin"
	  And I follow "Admin"
	  And I follow "Tools"
	  And I follow "Add tool"
	  And I fill in "Name" with ""
	  And I fill in "Mass" with "1"
	  And I fill in "Decay" with "rags"
	  And I fill in "Assemble" with "{wood: 3}"
	  And I fill in "Tools" with "{hammer: 1}"
	  And I fill in "Assemble skills" with "{blacksmith: 10}"
	  And I fill in "Result" with "1"
	  And I press "Create Tools item"
	  Then I should see "Item couldn't be created"
	  