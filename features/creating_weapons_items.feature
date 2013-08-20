Feature: In order to be able to kill
	  As an admin
	  I want to be able to create weapons items through the interface


	  Background:
	  Given the following users exist:
	  |name | email | password |admin|
	  |admin| admin@p.pt| password | true |
	  |palerma | p@p.pt |password | false |
	  
	  

	  Scenario: Create weapons item as admin
	  And I am signed in as "admin"
	  And I follow "Admin"
	  And I follow "Weapons"
	  And I follow "Add weapon"
	  And I fill in "Name" with "axe"
	  And I fill in "Mass" with "1"
	  And I fill in "Skill" with "axeing"
	  And I fill in "Decay" with "sword"
	  And I fill in "Decay days" with "90"
	  And I fill in "Quality" with "1"
	  And I fill in "Assemble" with "{wood: 3}"
	  And I fill in "Tools" with "{hammer: 1}"
	  And I fill in "Assemble skills" with "{smithing: 10}"
	  And I fill in "Result" with "1"
	  And I press "Create Weapons item"
	  Then I should see "New item created"
	  And I should see "axe"
	  
	  
	  Scenario: Create weapons item as admin
	  And I am signed in as "admin"
	  And I follow "Admin"
	  And I follow "Weapons"
	  And I follow "Add weapon"
	  And I fill in "Name" with ""
	  And I fill in "Mass" with "1"
	  And I fill in "Skill" with "axeing"
	  And I fill in "Decay" with "sword"
	  And I fill in "Decay days" with "90"
	  And I fill in "Quality" with "1"
	  And I fill in "Assemble" with "{wood: 3}"
	  And I fill in "Tools" with "{hammer: 1}"
	  And I fill in "Assemble skills" with "{smithing: 10}"
	  And I fill in "Result" with "1"
	  And I press "Create Weapons item"
	  Then I should see "Item couldn't be created"
	  