json.extract! dinner, :id, :title, :total_time, :yields, :ingredients, :instructions, :image, :host, :created_at, :updated_at
json.url dinner_url(dinner, format: :json)
