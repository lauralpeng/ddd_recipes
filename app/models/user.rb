class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :username, :uniqueness => true

  validates :username, :presence => true

  # Scopes

  def to_s
    username
  end

end
