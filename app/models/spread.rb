class Spread < ApplicationRecord
  belongs_to :jam
  belongs_to :type
  has_many :card_spreads
  has_many :cards, through: :card_spreads
  has_many :stories, through: :jam
  has_many :user_jams, through: :jam
  has_one :chat, through: :jam
end
