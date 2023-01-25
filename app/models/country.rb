class Country < ApplicationRecord
  has_many :states
  has_many :cities, through: :states

  validates :name, presence: true, uniqueness: true
end
