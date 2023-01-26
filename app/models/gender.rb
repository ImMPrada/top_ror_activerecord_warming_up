class Gender < ApplicationRecord
  has_many :profiles

  validates :label, presence: true, uniqueness: true
end
