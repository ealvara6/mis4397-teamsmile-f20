require 'csv'
class FindRecipeController < ApplicationController
    
    def index
        @dairy = CSV.read("csv/Dairy.csv")
        @vegetables = CSV.read("csv/Vegetables.csv")
        @fruits = CSV.read("csv/Fruits.csv")
        @baking = CSV.read("csv/Baking.csv")
        @sweeteners = CSV.read("csv/Sweeteners.csv")
        @spices = CSV.read("csv/Spices.csv")
        @meats = CSV.read("csv/Meats.csv")
        @fish = CSV.read("csv/Fish.csv")
        @seafood = CSV.read("csv/Seafood.csv")
    end
end
