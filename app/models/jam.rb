class Jam < ApplicationRecord
  has_many :user_jams
  has_many :users, through: :user_jams
  has_many :stories
  has_one :spread
  has_one :chat
  has_many :card_spreads, through: :spread
  has_many :messages, through: :chat
  has_many :versions, through: :stories
  has_many :comments, through: :stories
  has_many :cards, through: :spread

  def spread=(params)
    # spread: :title, :description, :type_id, :jam_id
    self.build_spread(params)
  end

  def build_api_data
    {jam: self,
      spread: {
        info: self.spread,
        cards: self.spread.cards,
        positions: self.spread.card_spreads,
        type: self.spread.type,
        data: self.spread.type.data,
        board: self.spread.build_board
      },
      stories: self.stories}
  end

end
