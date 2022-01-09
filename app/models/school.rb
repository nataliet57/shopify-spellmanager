class School < ApplicationRecord
	has_many :spells
	
	def self.to_nested_array_for_select
     nested = []  
     School.order(:name).each do |school|
         nested.push [school.name, school.id]
     end
     return nested 
	end
end
