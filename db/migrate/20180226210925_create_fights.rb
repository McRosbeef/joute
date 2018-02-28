class CreateFights < ActiveRecord::Migration[5.0]
  def change
    create_table :fights do |t|
      t.integer :winner_score
      t.integer :looser_score
      t.integer :winner
      t.integer :looser
      t.integer :player_1_weapon
      t.integer :player_2_weapon

      t.timestamps
    end
  end
end
