json.extract! recipe, :id, :ingredient_id, :quantity, :dish_id, :unit,
              :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
