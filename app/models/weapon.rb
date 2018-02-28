class Weapon < ApplicationRecord
	has_many :fights

	validates :name, uniqueness: true
end
