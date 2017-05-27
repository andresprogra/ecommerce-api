Rails.application.routes.draw do
  resources :orders
  resources :in_shopping_carts
  resources :carts, only: [:create, :destroy]
  
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :products, defaults: { format: 'json' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
