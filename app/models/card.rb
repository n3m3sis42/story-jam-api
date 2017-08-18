class Card < ApplicationRecord
  has_many :card_spreads
  has_many :spreads, through: :card_spreads
  belongs_to :category
end
