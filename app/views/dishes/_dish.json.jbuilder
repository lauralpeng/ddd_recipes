json.extract! dish, :id, :dish_name, :source, :time_required, :dish_photo, :category_id, :user_id, :created_at, :updated_at
json.url dish_url(dish, format: :json)
