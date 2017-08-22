class Card < ApplicationRecord
  has_many :card_spreads
  has_many :spreads, through: :card_spreads
  belongs_to :category

  def self.draw(num)
    Card.order('RANDOM()').limit(8)
  end

end
