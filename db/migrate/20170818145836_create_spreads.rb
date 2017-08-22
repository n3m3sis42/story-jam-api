class CreateSpreads < ActiveRecord::Migration[5.1]
  def change
    create_table :spreads do |t|
      t.string :title
      t.string :description
      t.integer :type_id
      t.integer :jam_id

      t.timestamps
    end
  end
end
