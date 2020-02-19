class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5], message: 'Sorry, you have to choice between 0 and 5' }
  validates_numericality_of :rating
end