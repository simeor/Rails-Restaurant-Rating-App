class Restaurantx < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
end
