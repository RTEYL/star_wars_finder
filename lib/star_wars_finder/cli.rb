class CLI
	def self.start
		self.welcome
		self.display_characters
	end
	def self.welcome
		puts "Welcome to my Star Wars Gem! \n\n"
		sleep(2)
		puts "You will be able to see a list of characters and some info about them\n\n"
	end
	def self.display_characters
		Person.top_10
		puts "\nselect a character in this top 10 list or search for a character by name"
		puts "Type 'exit' to exit"
		Person.search_all
	end
	def self.display_search_res(character)
		attr_list = [
			"name", "convert_height", "convert_mass", "hair_color", "eye_color", "birth_year", "convert_species", "homeworld"]
		attr_list.each do |m|
			i = character.methods.index { |sym| sym.to_s.match(m) }
			puts "#{character.methods[i].to_s.gsub("convert_","")}: #{character.send(m)}"
		end
	end
end