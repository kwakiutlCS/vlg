Feature: In order to be able to get dressed
	  As an admin
	  I want to be able to create clothes items through the interface


	  Background:
	  Given the following users exist:
	  |name | email | password |admin|
	  |admin| admin@p.pt| password | true |
	  |palerma | p@p.pt |password | false |
	  
	  

	  Scenario: Create clothes item as admin
	  And I am signed in as "admin"
	  And I follow "Admin"
	  And I follow "Clothes"
	  And I follow "Add clothes"
	  And I fill in "Name" with "Trousers"
	  And I fill in "Mass" with "1"
	  And I fill in "Moral" with "1"
	  And I fill in "Decay" with "rags"
	  And I fill in "Quality" with "90"
	  And I fill in "Assemble" with "{wool: 3}"
	  And I fill in "Tools" with "{needle: 1}"
	  And I fill in "Assemble skills" with "{weaver: 10}"
	  And I fill in "Result" with "1"
	  And I press "Create Clothes item"
	  Then I should see "New item created"
	  And I should see "Trousers"
	  
	  Scenario: create clothes standard user
	  And I am signed in as "palerma"
	  Then I should not see "Admin"

	  Scenario: Create clothes item as admin wrong parameters
	  And I am signed in as "admin"
	  And I follow "Admin"
	  And I follow "Clothes"
	  And I follow "Add clothes"
	  And I fill in "Name" with ""
	  And I fill in "Mass" with "1"
	  And I fill in "Moral" with "1"
	  And I fill in "Decay" with "rags"
	  And I fill in "Quality" with "90"
	  And I fill in "Assemble" with "{wool: 3}"
	  And I fill in "Tools" with "{needle: 1}"
	  And I fill in "Assemble skills" with "{weaver: 10}"
	  And I fill in "Result" with "1"
	  And I press "Create Clothes item"
	  Then I should see "Item couldn't be created"
	  