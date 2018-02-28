class User < ApplicationRecord
	has_may :fights

	validate :total_is_not_higher_than_100

	def total_is_not_higher_than_100
		errors.add(:life, "life + attack can't be higher than 100") (self.attack + self.life) <= 100
	end
end
