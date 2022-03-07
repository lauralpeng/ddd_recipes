class Category < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             dependent: :nullify

  # Indirect associations

  # Validations

  validates :category_name, presence: true

  # Scopes

  def to_s
    category_name
  end
end
