Rails.application.routes.draw do
  get 'general_shopping_list/index'
  get 'public_recipes/index'
  get 'recipes/index'
  devise_for :users
  root 'users#index'
  resources :foods
end
