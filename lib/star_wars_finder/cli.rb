class CLI
    def start
        self.welcome
        self.display_categories
    end
    def welcome
        puts "Welcome to my Star Wars Gem! \n\n"
        sleep(1.5)
        puts "You will be able to see a list of characters and some info about them"
        sleep(1)
    end
    def display_categories
        API.all_categories.each.with_index(1) do |key, i|
            if key.include?("people") || key.include?("planets") || key.include?("species")
                puts"#{i}. #{key.first}"
            end
        end
        puts "3. exit"
        puts "\nSelect a category(number) to view a list of objects in that category"
    end
end
