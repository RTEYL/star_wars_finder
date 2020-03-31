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
		puts "\nSelect a character in this top 10 list or,\nsearch for a character by name"
		puts "Type 'exit' to exit\n\n"
		name = gets.strip.downcase
		if name == "exit"
			exit!
		elsif Character.has_name?(name) == false && name.to_i == 0.0
			puts "The name you listed is not available"
			sleep(1.25)
			self.display_characters
		else
			puts "Entry is not valid"
			sleep(1.25)
			self.display_characters
		end
	end
	def self.display_search_res(character)
		character.instance_variables.each.with_index do |m,i|
			puts "#{character.instance_variables[i].to_s.gsub("@", "")}: #{character.send(m.to_s.gsub("@", ""))}"
		end
		self.exit?
	end
	def self.exit?
		puts "\nSearch again? y/n"
		input = gets.strip.downcase
		if input == 'y'
			self.display_characters
		elsif input != 'n'
			puts "invalid choice"
			self.exit?
		else
			exit!
		end
	end
end