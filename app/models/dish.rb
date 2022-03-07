class Dish < ApplicationRecord
  # Direct associations

  has_many   :combinations,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :category_id, :presence => true

  validates :dish_name, :presence => true

  validates :user_id, :presence => true

  # Scopes

  def to_s
    dish_name
  end

end
