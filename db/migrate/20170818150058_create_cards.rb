class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :description
      t.string :flipped_name
      t.string :flipped_description
      t.string :image_url
      t.string :flipped_image_url
      t.integer :category_id

      t.timestamps
    end
  end
end
