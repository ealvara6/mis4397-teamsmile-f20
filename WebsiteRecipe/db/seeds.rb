# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
file = File.open("breakfast.txt")
breakfast_data = file.read
file.close
breakfast_array = breakfast_data.split("@")

for breakfast in breakfast_array
    breakfast_info = breakfast.split('^')
    breakfast_info[1] = breakfast_info[1].to_i
    breakfast_info[2] = breakfast_info[2].to_i
    Breakfast.create(
        title: (breakfast_info[0]),
        total_time: (breakfast_info[1]),
        yields: (breakfast_info[2]),
        ingredients: (breakfast_info[3]),
        instructions: (breakfast_info[4]),
        image: (breakfast_info[5]),
        host: (breakfast_info[6]))
end


file = File.open("lunch.txt")
lunch_data = file.read
file.close
lunch_array = lunch_data.split("@")
lunch_array.pop

for lunch in lunch_array
    lunch_info = lunch.split('^')
    lunch_info[1] = lunch_info[1].to_i
    lunch_info[2] = lunch_info[2].to_i
    Lunch.create(
        title: (lunch_info[0]),
        total_time: (lunch_info[1]),
        yields: (lunch_info[2]),
        ingredients: (lunch_info[3]),
        instructions: (lunch_info[4]),
        image: (lunch_info[5]),
        host: (lunch_info[6]))
end


file = File.open("dinner.txt")
dinner_data = file.read
file.close
dinner_array = dinner_data.split("@")

for dinner in dinner_array
    dinner_info = dinner.split('^')
    dinner_info[1] = dinner_info[1].to_i
    dinner_info[2] = dinner_info[2].to_i
    Dinner.create(
        title: (dinner_info[0]),
        total_time: (dinner_info[1]),
        yields: (dinner_info[2]),
        ingredients: (dinner_info[3]),
        instructions: (dinner_info[4]),
        image: (dinner_info[5]),
        host: (dinner_info[6]))
end