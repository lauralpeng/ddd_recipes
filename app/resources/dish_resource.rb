class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dish_name, :string
  attribute :source, :string
  attribute :time_required, :integer
  attribute :dish_photo, :string
  attribute :category_id, :integer
  attribute :user_id, :integer

  # Direct associations

  belongs_to :user

  belongs_to :category

  has_many   :combinations

  # Indirect associations
end
