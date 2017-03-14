Feature: As a visitor
In order to checkout
I would like to create an account


Scenario: I create an account
  Given I am on the registration page
  Then I should see "Sign up"
  When I fill in "Name" with "Nisse"
  And I fill in "Email" with "Nisse@nisse.com"
  And I fill in "Password" with "12345678"
  And I fill in "Password confirmation" with "12345678"
  Then i click "Sign up"
  And I should see "Welcome Nisse!"


  Scenario: I create an account without e-mail 
    Given I am on the registration page
    Then I should see "Sign up"
    When I fill in "Email" with ""
    Then i click "Sign up"
    And I should see "Email can't be blank"
