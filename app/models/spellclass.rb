class Spellclass < ApplicationRecord
	has_many :spells 
	
	def getName
		return self.name
	end
end

  