file = File.open("breakfast_recipes.txt")
file_data = file.read
file.close
recipe_array = file_data.split("&")

recipe_info_array = []

for recipe in recipe_array
    recipe_info = recipe.split('^')
    recipe_info[1] = recipe_info[1].to_i
    recipe_info[2] = recipe_info[2].to_i
    recipe_info_array.append(recipe_info)
end


puts(recipe_info_array[0][3].class)