class CreateUserJams < ActiveRecord::Migration[5.1]
  def change
    create_table :user_jams do |t|
      t.integer :user_id
      t.integer :jam_id

      t.timestamps
    end
  end
end
