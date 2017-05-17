class Review < ApplicationRecord
  NOTES  = [1, 2, 3, 4, 5]
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: {in: NOTES, allow_nil: false}
end
