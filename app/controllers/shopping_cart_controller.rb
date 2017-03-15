class ShoppingCartController < ApplicationController
    def add_to_cart

      if cookies['cart_id']
        @cart = ShoppingCart.find_or_create_by(id: session[:cart_id])
      else
        @cart = ShoppingCart.create
      end

      @image = Image.find(params[:image_id])
      @cart.add(@image, @image.price)
    end
  end
