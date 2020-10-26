Rails.application.routes.draw do
  resources :recipes
  
  
  get '/recipes/1000/breakfast', to: 'recipes#breakfast'
  get '/recipes/2000/lunch', to: 'recipes#lunch'
  get '/recipes/3000/dinner', to: 'recipes#dinner'
  get '/recipes/4000/desert', to: 'recipes#desert'
  get '/recipes/5000/snack', to: 'recipes#snack'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
