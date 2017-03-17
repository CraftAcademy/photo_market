Feature: Checkout and show cart
  As a buyer
  In order to checkout
  I would like to see my cart content

  Background:
    Given the following images exist
      | name   | creator | price | print_size | file          |
      | Sunset | John    | 17    | 200x200    | my_sunset.png |
      | Boat   | Alex    | 20    | 200x200    | my_boat.png   |

    Scenario: I checkout and my cart content is displayed
      Given I am on the index page
      When I click "Buy" on "Sunset"
      When I click "Buy" on "Boat"
      And I click "Checkout"
      And I should see "Welcome to checkout"
      And I should see "Sunset"
      And I should see "Total 37"
