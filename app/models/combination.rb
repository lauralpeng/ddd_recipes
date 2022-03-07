class Combination < ApplicationRecord
  # Direct associations

  belongs_to :dish

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    ingredient.to_s
  end

end
