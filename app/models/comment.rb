class Comment < ApplicationRecord
  belongs_to :story
  belongs_to :reader, class_name: 'User', foreign_key: "reader_id"
end
