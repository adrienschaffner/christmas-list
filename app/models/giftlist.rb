class Giftlist < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
