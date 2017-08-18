class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  
end
