class User < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :dependent => :nullify

  # Indirect associations

  # Validations

  validates :password, :presence => true

  validates :username, :uniqueness => true

  validates :username, :presence => true

  # Scopes

  def to_s
    username
  end

end
