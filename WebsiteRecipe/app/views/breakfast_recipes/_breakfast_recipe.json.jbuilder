json.extract! breakfast_recipe, :id, :title, :total_time, :yields, :ingredients, :image, :host, :created_at, :updated_at
json.url breakfast_recipe_url(breakfast_recipe, format: :json)
