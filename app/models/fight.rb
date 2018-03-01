class Fight < ApplicationRecord
  belongs_to :player_1_weapon, class_name: 'Weapon'
  belongs_to :player_2_weapon, class_name: 'Weapon'
  belongs_to :winner, class_name: 'User'
  belongs_to :looser, class_name: 'User'

  after_save :set_winner

  def game
  	raise
  	if player_2
  	end
  end

  def set_winner
  	
  end
end
