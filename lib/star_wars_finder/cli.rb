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
		Character.top_10
		puts "\nselect a character in this top 10 list or search for a character by name"
		puts "Type 'exit' to exit\n\n"
		Character.search_all
	end
	def self.display_search_res(character)
		character.instance_variables.each.with_index do |m,i|
			puts "#{character.instance_variables[i].to_s.gsub("@", "")}: #{character.send(m.to_s.gsub("@", ""))}"
		end
		self.exit?
	end
	def self.exit?
		puts "\nType 'exit' to exit or 'back' to search again."
		input = gets.strip.downcase
		if input == 'back'
			self.display_characters
		elsif input != 'exit'
			puts "invalid choice"
			self.exit?
		else
			exit!
		end
	end
end