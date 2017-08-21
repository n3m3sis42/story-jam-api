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
end
