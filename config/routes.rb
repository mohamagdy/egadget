Egadgets::Application.routes.draw do
  resources :gadgets
  devise_for :users

  root to: 'home#index'
end
