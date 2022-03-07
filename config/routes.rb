Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "dishes#index"
  resources :combinations
  resources :ingredients
  resources :users
  resources :categories
  resources :dishes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
