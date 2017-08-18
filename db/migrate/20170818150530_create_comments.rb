class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :reader_id
      t.integer :story_id

      t.timestamps
    end
  end
end
