class ShoppingCart < ApplicationRecord
  acts_as_shopping_cart

  def taxes
    0
  end
end
