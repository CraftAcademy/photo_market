Feature: As a buyer
In order to get printable high resolution image
I would like to be able to pay for my image.

Background:
  Given the following images exist
    | name   | creator | price | print_size | file          |
    | Sunset | John    | 17    | 200x200    | my_sunset.png |
    | Boat   | Alex    | 20    | 200x200    | my_boat.png   |

Scenario: I checkout and pay for my images
  Given I am on the index page
  When I click "Buy" on "Sunset"
  When I click "Buy" on "Boat"
  And I click "Checkout"
  And I should see "Welcome to checkout"
  And I should see "Sunset"
  And I should see "total amount: 37"
