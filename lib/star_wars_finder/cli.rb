class CLI
    def start
        self.welcome
        self.display_categories
    end
    def welcome
        puts "Welcome to my Star Wars Gem! \n\n"
        sleep(1.5)
        puts "You will be able to choose a category to search by \nand recieve information on your search topic \n\n"
        sleep(1)
    end
    def display_categories
        API.all_categories.each.with_index(1){|key, i| puts"#{i}. #{key.first}"}
        puts "7. exit"
        puts "\nSelect a category(number) to search by"
        self.get_search_params
    end
end
