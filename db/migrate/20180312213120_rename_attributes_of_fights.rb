class RenameAttributesOfFights < ActiveRecord::Migration[5.0]
  def change
  	rename_column :fights, :player_1_weapon_id, :winner_weapon_id
  	rename_column :fights, :player_2_weapon_id, :looser_weapon_id
  end
end
