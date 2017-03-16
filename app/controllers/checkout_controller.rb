class CheckoutController < ApplicationController

  def new
    @cart = ShoppingCart.find(session[:cart_id])
  end
end
