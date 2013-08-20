Feature: In order to be able to not be killer
	  As an admin
	  I want to be able to create armour items through the interface


	  Background:
	  Given the following users exist:
	  |name | email | password |admin|
	  |admin| admin@p.pt| password | true |
	  |palerma | p@p.pt |password | false |
	  
	  

	  Scenario: Create armours item as admin
	  And I am signed in as "admin"
	  And I follow "Admin"
	  And I follow "Armour"
	  And I follow "Add armour"
	  And I fill in "Name" with "helmet"
	  And I fill in "Mass" with "1"
	  And I fill in "Decay" with "sword"
	  And I fill in "Decay days" with "90"
	  And I fill in "Quality" with "1"
	  And I fill in "Assemble" with "{wood: 3}"
	  And I fill in "Tools" with "{hammer: 1}"
	  And I fill in "Assemble skills" with "{smithing: 10}"
	  And I fill in "Result" with "1"
	  And I press "Create Armours item"
	  Then I should see "New item created"
	  And I should see "helmet"
	  
	  
	  Scenario: Create armour item as admin wrong parameters
	  And I am signed in as "admin"
	  And I follow "Admin"
	  And I follow "Armour"
	  And I follow "Add armour"
	  And I fill in "Name" with ""
	  And I fill in "Mass" with "1"
	  And I fill in "Decay" with "sword"
	  And I fill in "Decay days" with "90"
	  And I fill in "Quality" with "1"
	  And I fill in "Assemble" with "{wood: 3}"
	  And I fill in "Tools" with "{hammer: 1}"
	  And I fill in "Assemble skills" with "{smithing: 10}"
	  And I fill in "Result" with "1"
	  And I press "Create Armours item"
	  Then I should see "Item couldn't be created"
	  