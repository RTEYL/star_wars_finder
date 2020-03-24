class CLI
    def start
        self.welcome
        self.display_categories
    end
    def welcome
        puts "Welcome to my Star Wars API! \n\n"
        sleep(1.5)
        puts "You will be able to choose a category to search by \nand recieve information on your search topic \n\n"
        sleep(1)
    end
    def display_categories
        API.all_categories.each.with_index(1){|key, i| puts"#{i}. #{key.first}"}
        puts "7. exit"
        puts "\nSelect a category(number) to search by"
        self.search_by_category
    end
    def search_by_category
        index = gets.to_i
        if index.class == Integer && index > 0 && index < 8
            if index != 7
                API.search_category(index)
                self.display_categories
            end
        else
            begin
                raise InvalidArgumentError
            rescue InvalidArgumentError => error
                puts error.message
            end
            self.display_categories
        end
    end
    def get_search_params
        
    end
    class InvalidArgumentError < StandardError
        def message
            "Your value must be a number and the number must be
            greator than 0 and less than 8"
        end
    end
end
