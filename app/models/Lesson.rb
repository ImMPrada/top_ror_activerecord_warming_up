class Lesson < ApplicationRecord
  belongs_to :course

  validates :title, presence: true, length: { maximum: 20 }
  validates :description, presence: true
end
