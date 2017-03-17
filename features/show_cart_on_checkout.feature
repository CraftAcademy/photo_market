Feature: Show cart content and checkout
  As a buyer
  In order to complete checkout
  I would like to see my cart content and checkout

  Background:
    Given the following images exist
      | name   | creator | price | print_size | file          |
      | Sunset | John    | 17    | 200x200    | my_sunset.png |
      | Boat   | Alex    | 20    | 200x200    | my_boat.png   |

    Scenario: I check out and my cart is empty
      Given I am on the index page
      And I click "Checkout"
      Then I should see "Please add a photo to your cart before checkout"

    Scenario: I check out and my cart content is displayed
      Given I am on the index page
      When I click "Buy" on "Sunset"
      When I click "Buy" on "Boat"
      And I click "Checkout"
      And I should see "Your Shopping Cart"
      And I should see "Sunset"
      Then I should see "Total: 37.00 USD"

    Scenario: I am happy with my cart and click finalize order
      Given I am on the index page
      When I click "Buy" on "Sunset"
      When I click "Buy" on "Boat"
      And I click "Checkout"
      And I should see "Your Shopping Cart"
      And I should see "Sunset"
      Then I should see "Total: 37.00 USD"
      And I click "Finalize order"
      And I should see "Thank you for your order"
      Then I should see "Sunset" link
