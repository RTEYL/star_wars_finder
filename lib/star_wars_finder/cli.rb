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
        input = gets.strip.downcase
        Person.search_all(input)
    end
    def self.display_search_res(character)
        character.to_s.split.each do |key,value|
            puts "#{key}: #{value}"
        end
    end
end
