Feature: Create Checkout page and Payment method
  As a buyer
  In order to get printable high resolution image
  I would like to be able to pay for my image.

  Scenario: Check out and pay with credit card
    Given I am logged in as a user
    And there is one image in my cart
    And I am on the "cart" page
    When I click the "Pay with Card" stripe button
    And I fill in my card details on the stripe form
    And I submit the stripe form
    Then I should see:
      | content                   |
      | Your image is on its way! |
      | my_sunset.png             |
    And my order should be registered in the system
