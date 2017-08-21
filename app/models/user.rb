class User < ApplicationRecord
  has_many :user_jams
  has_many :jams, through: :user_jams
  has_many :comments, as: :reader
  has_many :messages, foreign_key: 'author_id'
  has_many :chats, through: :messages, foreign_key: 'author_id'
  has_many :stories, through: :jams
  has_many :spreads, through: :jams
end
