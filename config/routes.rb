Rails.application.routes.draw do

  devise_for :users

  root controller: :images, action: :index

  resources :shopping_carts, only: [], as: :cart do
    resources :shopping_cart_items, only: [:create], as: :items
      get "/checkout", controller: :shopping_cart, action: :checkout, as: :checkout
  end
end
