class Ingredient < ApplicationRecord
  # Direct associations

  has_many   :combinations,
             dependent: :nullify

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    ingredient_name
  end
end
