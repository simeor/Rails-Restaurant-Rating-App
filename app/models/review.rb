class Review < ApplicationRecord
  belongs_to :restaurantx
  validates :content, presence: true
end
