class AddDishReferenceToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :recipes, :dishes
    add_index :recipes, :dish_id
    change_column_null :recipes, :dish_id, false
  end
end
