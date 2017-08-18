class Story < ApplicationRecord
  belongs_to :jam
  has_many :versions
  has_many :comments
  has_many :readers, through: :comments, class_name: 'User', foreign_key: 'reader_id'
end
