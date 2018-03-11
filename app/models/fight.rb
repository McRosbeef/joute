class Fight < ApplicationRecord
  belongs_to :player_1_weapon, class_name: 'Weapon', foreign_key: "weapon_id"
  belongs_to :player_2_weapon, class_name: 'Weapon', foreign_key: "weapon_id"
  belongs_to :winner, class_name: 'User', foreign_key: "user_id"
  belongs_to :looser, class_name: 'User', foreign_key: "user_id"

  attr_accessor :player_1, :player_2
  after_save :set_stats

  def game
  	# furiosity calcul // (player's life/ attack) 
  	# if player choice is "no weapon", life increase by 1.5 because of his courage
  	p_1_weapon = Weapon.find_by(id: player_1_weapon_id )
  	p_2_weapon = Weapon.find_by(id: player_2_weapon_id )

  	p_1_furiosity = !p_1_weapon ? ((player_1.life * 1.5)/ player_1.attack) : (player_1.life / player_1.attack)
  	p_2_furiosity = !p_2_weapon ? ((player_2.life * 1.5)/ player_2.attack) : (player_2.life / player_2.attack)

  	if !!p_1_weapon && !!p_2_weapon
  		p_1_agility = (p_1_furiosity * 100) + ((p_1_weapon.damage.to_i * p_1_weapon.speed.to_i) * (rand(1..10)*0.1).round(2))
  		p_2_agility = (p_2_furiosity * 100) + ((p_2_weapon.damage.to_i * p_2_weapon.speed.to_i) * (rand(1..10)*0.1).round(2))
  	elsif !!p_1_weapon && !p_2_weapon
  		p_1_agility = (p_1_furiosity * 100) + ((p_1_weapon.damage.to_i * p_1_weapon.speed.to_i) * (rand(1..10)*0.1).round(2))
  		p_2_agility = (p_2_furiosity * 100)
  	elsif !p_1_weapon && !!p_2_weapon
  		p_1_agility = (p_1_furiosity * 100)
  		p_2_agility = (p_2_furiosity * 100) + ((p_2_weapon.damage.to_i * p_2_weapon.speed.to_i) * (rand(1..10)*0.1).round(2))
  	else
  		p_1_agility = (p_1_furiosity * 100)
  		p_2_agility = (p_2_furiosity * 100)
  	end

  	if p_1_agility >= p_2_agility
  		self.winner_id = player_1.id
  		self.winner_score = p_1_agility - p_2_agility
  		self.looser_id = player_2.id
  		self.looser_score = p_2_agility
  	else
  		self.winner_id = player_2.id
  		self.winner_score = p_2_agility - p_1_agility
  		self.looser_id = player_1.id
  		self.looser_score = p_1_agility
  	end
  end

  private

  def set_stats
  	w = User.find_by(id: self.winner_id)
  	w.stat = ((Fight.where(winner_id: w.id).count + Fight.where(looser_id: w.id).count) / (Fight.where(winner_id: w.id).count)) * 100
  	w.save!
  end
end
