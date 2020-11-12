class MainController < ApplicationController
  def index
    @recipes = Recipe.all
  end
end
