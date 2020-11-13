require 'csv'

dairy = (CSV.read("csv/recipe.csv"))

puts dairy[1][11]