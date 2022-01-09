class Book < ApplicationRecord
	has_and_belongs_to_many :spells
	validates_presence_of :name, maximum: 70 
	validates_uniqueness_of :name, case_sensitive: false, message: " cannot be the same as an existing book. Case insensitive"
	
	def self.to_nested_array_for_select
     nested = []  
     Book.order(:name).each do |book|
         nested.push [book.name, book.id]
     end
     return nested 
	end
	
	def spellcount
		count = self.spells.count
		return count;
	end
	
	 def self.order_by field
		if field == 'count'
		  return Book.order(self.spells.length)
		else
		  return Book.order(:name)
		end
	  end
	
end
