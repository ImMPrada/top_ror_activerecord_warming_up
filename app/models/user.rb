class User < ApplicationRecord
  has_one :profile

  validates :email, presence: true, uniqueness: true
  validates :birthdate, presence: true
end
