# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

recipe = CSV.read("csv/recipe.csv")

recipe.each do |recipe|
    Recipe.create(name: recipe[0],
    types: recipe[1],
    restrictions: recipe[2],
    time: recipe[3],
    yield: recipe[4],
    ingredients: recipe[5],
    instructions: recipe[6],
    image: recipe[7],
    link: recipe[8],
    make: recipe[9],
    make_by: recipe[10],
    blurb: recipe[11])
end
