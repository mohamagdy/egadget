Egadgets::Application.routes.draw do
  resources :gadgets
  devise_for :users
end
