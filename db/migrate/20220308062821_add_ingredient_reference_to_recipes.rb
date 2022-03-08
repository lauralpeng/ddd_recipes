class AddIngredientReferenceToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :recipes, :ingredients
    add_index :recipes, :ingredient_id
    change_column_null :recipes, :ingredient_id, false
  end
end
