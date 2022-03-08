class Dish < ApplicationRecord
  mount_base64_uploader :dish_photo, DishPhotoUploader

  # Direct associations

  belongs_to :user

  belongs_to :category

  has_many   :combinations,
             class_name: "Recipe",
             dependent: :destroy

  # Indirect associations

  # Validations

  validates :category_id, presence: true

  validates :dish_name, presence: true

  validates :user_id, presence: true

  # Scopes

  def to_s
    dish_name
  end
end
