class State < ApplicationRecord
  belongs_to :country
  has_many :cities
  has_many :profiles, trough: cities

  validates :name, presence: true, uniqueness: true
end
