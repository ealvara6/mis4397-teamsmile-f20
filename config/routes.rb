Rails.application.routes.draw do
  devise_for :users
  root 'main#index'
  devise_scope :user do
    get "users/sign_out" => "devise/sessions#destroy"
  end
  
  get 'main/index'
  get "main/favorites", to: "main#favorites", as: "favorites"
  

  get 'contact_us/index'

  get 'about_us/index'

  resources :recipes
  get "recipes/:id/favorite", to: "recipes#favorite", as: "favorite"
  get "recipes/:id/unfavorite", to: "recipes#unfavorite", as: "unfavorite"
  
  resources :find_recipe
  
  
  get '/find_recipe/query', to: 'find_recipe#query'
  get '/contact_us', to: 'contact_us#index'
  get '/about_us', to: 'about_us#index'
  get '/recipes/1000/breakfast', to: 'recipes#breakfast'
  get '/recipes/2000/lunch', to: 'recipes#lunch'
  get '/recipes/3000/dinner', to: 'recipes#dinner'
  get '/recipes/4000/desert', to: 'recipes#desert'
  get '/recipes/5000/snack', to: 'recipes#snack'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
