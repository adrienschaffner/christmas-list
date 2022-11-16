class Review < ApplicationRecord
  belongs_to :giftlist

  validates :content, presence: true
end
