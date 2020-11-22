class MainController < ApplicationController
  def index
    @recipes = Recipe.all
  end
  
  def favorites
    user = User.find(current_user.id)
    @recipes = user.all_favorited
  end
end
