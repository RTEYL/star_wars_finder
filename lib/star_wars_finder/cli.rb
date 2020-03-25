class CLI
    def start
        self.welcome
        self.display_characters
    end
    def welcome
        puts "Welcome to my Star Wars Gem! \n\n"
        puts "You will be able to see a list of characters and some info about them"
    end
    def display_characters
        Person.top_10
        puts "select a character in this top 10 list or search for a character by name"
    end
end
