Feature: In order to be able to eat
	  As an admin
	  I want to be able to create food items through the interface


	  Background:
	  Given the following users exist:
	  |name | email | password |admin|
	  |admin| admin@p.pt| password | true |
	  |palerma | p@p.pt |password | false |
	  
	  

	  Scenario: Create food item as admin wrong parameters
	  And I am signed in as "admin"
	  And I follow "Admin"
	  And I follow "Food items"
	  And I follow "Add food item"
	  And I fill in "Name" with ""
	  And I fill in "Mass" with "1"
	  And I fill in "Hunger" with "-1"
	  And I fill in "Moral" with "1"
	  And I fill in "Decay" with "stale bread"
	  And I fill in "Decay probability" with "90"
	  And I fill in "Assemble" with "{flour: 1}"
	  And I fill in "Tools" with "{hammer: 1}"
	  And I fill in "Assemble skills" with "{bakery: 10}"
	  And I fill in "Workshop" with "bakery"
	  And I fill in "Result" with "20"
	  And I press "Create Food item"
	  Then I should see "Item couldn't be created"
	  And I should not see "Bread"

	  Scenario: Create food item as admin
	  And I am signed in as "admin"
	  And I follow "Admin"
	  And I follow "Food items"
	  And I follow "Add food item"
	  And I fill in "Name" with "Bread"
	  And I fill in "Mass" with "1"
	  And I fill in "Hunger" with "-1"
	  And I fill in "Moral" with "1"
	  And I fill in "Decay" with "stale bread"
	  And I fill in "Decay probability" with "90"
	  And I fill in "Assemble" with "{flour: 1}"
	  And I fill in "Tools" with "{hammer: 1}"
	  And I fill in "Assemble skills" with "{bakery: 10}"
	  And I fill in "Workshop" with "bakery"
	  And I fill in "Result" with "20"
	  And I press "Create Food item"
	  Then I should see "New item created"
	  And I should see "Bread"
	  
	  Scenario: create food standard user
	  And I am signed in as "palerma"
	  Then I should not see "Admin"