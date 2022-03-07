class Dish < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :dish_name, :presence => true

  validates :user_id, :presence => true

  # Scopes

  def to_s
    dish_name
  end

end
