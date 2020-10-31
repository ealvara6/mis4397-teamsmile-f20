require 'csv'
class FindRecipeController < ApplicationController
    
    def index
        @dairy = CSV.read("Dairy.csv")
        @vegetables = CSV.read("Vegetables.csv")
        @fruits = CSV.read("Fruits.csv")
        @baking = CSV.read("Baking.csv")
        @sweeteners = CSV.read("Sweeteners.csv")
        @spices = CSV.read("Spices.csv")
        @meats = CSV.read("Meats.csv")
        @fish = CSV.read("Fish.csv")
        @seafood = CSV.read("Seafood.csv")
    end
end
