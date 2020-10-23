Rails.application.routes.draw do
  resources :dinners
  resources :lunches
  resources :breakfasts
  resources :breakfast_recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
