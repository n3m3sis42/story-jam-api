class Spread < ApplicationRecord
  belongs_to :jam
  belongs_to :type
  has_many :card_spreads
  has_many :cards, through: :card_spreads
  has_many :stories, through: :jam
  has_many :user_jams, through: :jam
  has_one :chat, through: :jam

  def build_board
    info = self.type.data[:order_and_position]
    card_spreads = self.card_spreads.order(:order)

    # iterate over the card_spreads
    # for each element, use the index to get the position and z-depth from the card-spread.
    # assign the empty-board where the board key == the element position.

    card_spreads.each_with_index do |card_spreads, index|
      position = info[:order_and_position][index][:position]
      z = info[:order_and_position][index][:z]
      card = Card.find(card_spreads.card_id)
      flipped = card_spreads.flipped

      board[position] = {
        flipped: flipped,
        data: {
          id: card.id,
          name: card.name,
          description: card.description,
          flipped_name: card.flipped_name,
          flipped_description: card.flipped_description,
          image_url: card.image_url,
          flipped_image_url: card.flipped_image_url,
          category_id: card.category_id
        }
      }
    end

    board = {
      '0': nil,
      '1': nil,
      '2': nil,
      '3': nil,
      '4': nil,
      '5': nil,
      '6': nil,
      '7': nil,
      '8': nil,
      '9': nil,
      '10': nil,
      '11': nil,
      '12': nil,
      '13': nil,
      '14': nil,
      'A': nil,
      'B': nil,
      'C': nil,
      'D': nil,
      'E': nil,
      'F': nil,
      'G': nil,
      'H': nil,
      'I': nil,
      'J': nil,
      'K': nil,
      'L': nil,
      'M': nil,
      'N': nil,
      'O': nil,
    }

    return board
  end # end build_board

end # end class
