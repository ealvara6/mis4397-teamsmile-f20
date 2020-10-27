Rails.application.routes.draw do
  get 'contact_us/index'

  get 'about_us/index'

  resources :recipes
  
  get '/contact_us', to: 'contact_us#index'
  get '/about_us', to: 'about_us#index'
  get '/recipes/1000/breakfast', to: 'recipes#breakfast'
  get '/recipes/2000/lunch', to: 'recipes#lunch'
  get '/recipes/3000/dinner', to: 'recipes#dinner'
  get '/recipes/4000/desert', to: 'recipes#desert'
  get '/recipes/5000/snack', to: 'recipes#snack'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
