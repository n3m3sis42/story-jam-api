class CreateCardSpreads < ActiveRecord::Migration[5.1]
  def change
    create_table :card_spreads do |t|
      t.integer :card_id
      t.integer :spread_id
      t.boolean :flipped
      t.string :notes

      t.timestamps
    end
  end
end
