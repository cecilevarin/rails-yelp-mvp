class Review < ApplicationRecord
  RATINGS = (0..5).to_a
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: true, inclusion: { in: RATINGS,
            message: "%{value} is not a valid rating" }
end

