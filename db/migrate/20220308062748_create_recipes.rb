class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.integer :ingredient_id
      t.float :quantity
      t.integer :dish_id
      t.string :unit

      t.timestamps
    end
  end
end
