Rails.application.routes.draw do
  get 'recipe_food/index'
  get 'recipe/index'
  get 'reciped/index'
  get 'food/index'
  root 'user#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
