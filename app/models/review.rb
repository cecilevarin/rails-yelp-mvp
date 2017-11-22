class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true, numericality: true, inclusion: { in: (0..5).to_a,
            message: "%{value} is not a valid rating" }
  belongs_to :restaurant
end

