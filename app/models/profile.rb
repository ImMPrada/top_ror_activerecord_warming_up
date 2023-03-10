class Profile < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :city
  belongs_to :gender

  validates :username, presence: true, uniqueness: true
  validates :birthdate, presence: true
end
