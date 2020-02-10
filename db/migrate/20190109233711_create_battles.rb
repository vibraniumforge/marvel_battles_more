class CreateBattles < ActiveRecord::Migration[5.2]
  def change
    create_table :battles do |t|
      t.string :name
      t.string :location
      t.integer :character_id, foreign_key: true
      t.integer :movie_id, foreign_key: true

      t.timestamps
    end
  end
end
