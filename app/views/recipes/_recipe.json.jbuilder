json.extract! recipe, :id, :name, :types, :restrictions, :time, :yield, :ingredients, :instructions, :image, :link, :make, :make_by, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
