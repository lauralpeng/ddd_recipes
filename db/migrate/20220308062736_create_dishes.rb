class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :dish_name
      t.string :source
      t.integer :time_required
      t.string :dish_photo
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
