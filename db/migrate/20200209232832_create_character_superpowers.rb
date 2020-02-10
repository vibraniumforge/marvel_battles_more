class CreateCharacterSuperpowers < ActiveRecord::Migration[5.2]
  def change
    create_table :character_superpowers do |t|
      t.integer :character_id, foreign_key: true
      t.integer :superpower_id, foreign_key: true

      t.timestamps
    end
  end
end
