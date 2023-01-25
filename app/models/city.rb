class City < ApplicationRecord
  belongs_to :state
  has_many :profiles

  validates :name, presence: true, uniqueness: true
end
