Feature:
	 In order to enjoy the website
	 As anyone
	 I want to be able to sign up

	 Scenario:
	 Given I am on the home page
	 And I follow "Sign up"
	 And I fill in "Name" with "palerma"
	 And I fill in "Email" with "p@p.pt"
	 And I fill in "Password" with "234567"
	 And I fill in "Password confirmation" with "234567"
	 And I press "Sign up"
	 Then I should see "You have signed up successfully"

	 
	 