class Chat < ApplicationRecord
  belongs_to :jam
  has_many :messages
  has_many :authors, through: :messages, class_name: 'User', foreign_key: 'author_id'  
end
