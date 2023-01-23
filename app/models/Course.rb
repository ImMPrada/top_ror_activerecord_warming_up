class Course < ApplicationRecord
  has_many :lessons

  validates :title, presence: true, length: { maximum: 20 }
  validates :description, presence: true
end
