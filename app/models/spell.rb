class Spell < ApplicationRecord
	belongs_to :school, optional: true
	has_and_belongs_to_many :spellclasses
	has_and_belongs_to_many :books
	
	validates_presence_of :title, message: "Name cannot be blank"
	validates_length_of :title, maximum: 70
	validates_uniqueness_of :title, case_sensitive: false, message: "Name cannot be the same as an existing spell. Case insensitive. "
	validates_presence_of :level
	validates_presence_of :school
	validates_numericality_of :level, only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10
	validates :concentration, inclusion: [true, false]
	validates_length_of :description, maximum: 4096
	validates_presence_of :spellclasses, message: "A spell must have one or more classes."
	validates :description, exclusion: {in: [nil], message: "cannot be nil"}
	
	def isConcentration
		if self.concentration
			return "Yes"
		else
			return "No"
		end
	end
end
