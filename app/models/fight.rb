class Fight < ApplicationRecord
  belongs_to :player_1
  belongs_to :player_2
  belongs_to :player_1_weapon
  belongs_to :player_2_weapon
  belongs_to :winner
end
