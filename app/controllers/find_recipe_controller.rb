require 'csv'
class FindRecipeController < ApplicationController
    
    def index
        dairy = CSV.read("csv/Dairy.csv")
        vegetables = CSV.read("csv/Vegetables.csv")
        fruits = CSV.read("csv/Fruits.csv")
        baking = CSV.read("csv/Baking.csv")
        sweeteners = CSV.read("csv/Sweeteners.csv")
        spices = CSV.read("csv/Spices.csv")
        meats = CSV.read("csv/Meats.csv")
        fish = CSV.read("csv/Fish.csv")
        seafood = CSV.read("csv/Seafood.csv")
        
        
        @ingredients = [dairy, vegetables, fruits, baking, sweeteners, spices, meats, fish, seafood]
        @ingredients_name = ["Dairy", "Vegetables", "Fruits", "Baking", "Sweeteners", "Spices", "Meats", "Fish", "Seafood"]
        @images = ["dairy.png","vegetable.png","fruit.png","baking.png","sugar.png","spice.png","meat.png","fish.png","seafood.png"]
        @restrictions = ["No Restrictions", "Vegetarian", "Vegan", "Dairy Free", "Gluten Free"]
        @restrictions_values = ["XX", "VT", "V", "DF", "GF"]
    end
    
    
    def show
        recipes = Recipe.search_restricions(params[:restriction])
        @recipes = recipes.search_ingredients(params[:ingredient])
    end
end
