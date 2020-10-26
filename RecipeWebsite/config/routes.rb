Rails.application.routes.draw do
  resources :recipes
  resources :dinners
  resources :lunches
  resources :breakfasts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
