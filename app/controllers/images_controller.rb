class ImagesController < ApplicationController
  before_action :create_cart, only: :index

  def index
    @images = Image.all
  end

  private

  def create_cart
    session[:cart_id] = ShoppingCart.create.id unless session[:cart_id]
  end
end
