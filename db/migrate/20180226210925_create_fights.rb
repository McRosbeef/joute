class CreateFights < ActiveRecord::Migration[5.0]
  def change
    create_table :fights do |t|
      t.integer :winner_score
      t.integer :looser_score
      t.integer :winner_id
      t.integer :looser_id
      t.integer :player_1_weapon_id
      t.integer :player_2_weapon_id

      t.timestamps
    end
  end
end
