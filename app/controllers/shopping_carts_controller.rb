class ShoppingCartsController < ApplicationController
  before_action :get_shopping_cart

  def show

  end

  private

  def get_shopping_cart
    @sum = 0
    @cart = ShoppingCart.find(session[:cart_id])

    @cart.shopping_cart_items.each do |total|
      @sum += total.item.price
    end

  end
end
