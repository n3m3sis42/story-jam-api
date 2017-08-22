class Card < ApplicationRecord
  has_many :card_spreads
  has_many :spreads, through: :card_spreads
  belongs_to :category

  def self.draw(num)
    deck = Card.all.shuffle
    hand = []
    num.times do
      card= deck.shift,
      hand << card
    end
    return hand
  end

end
