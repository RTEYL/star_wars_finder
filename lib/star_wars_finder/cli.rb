class CLI
    def start
        self.welcome
        self.get_categories
    end
    def welcome
        puts "Welcome to my Star Wars API! \n\n"
        sleep(1.5)
        puts "You will be able to choose a category to search by \nand recieve information on your search topic \n\n"
        sleep(1.5)
    end
    def get_categories
        API.list_categories
        puts "Select a category(number) to search by"
    end
end