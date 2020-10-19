file = File.open("breakfast_recipes.txt")
file_data = file.read
file.close
file_data_array = file_data.split(";")

puts file_data_array[0]