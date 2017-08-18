class CreateVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :versions do |t|
      t.string :title
      t.string :content
      t.integer :story_id

      t.timestamps
    end
  end
end
