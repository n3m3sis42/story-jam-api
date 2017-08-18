class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.integer :jam_id

      t.timestamps
    end
  end
end
