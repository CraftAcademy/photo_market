Rails.application.routes.draw do

  devise_for :users

  root controller: :images, action: :index

  resources :shopping_carts, only: [:show], as: :cart do
    resources :shopping_cart_items, only: [:create], as: :items
      # post "/checkout", controller: :shopping_carts, action: :checkout
  end
end
