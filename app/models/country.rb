class Country < ApplicationRecord
  has_many :states
  has_many :cities, trough: states

  validates :name, presence: true, uniqueness: true
end
