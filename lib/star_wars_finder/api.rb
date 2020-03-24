class API

    @@all_categories = HTTParty.get("https://swapi.co/api/")

    def self.all_categories
        @@all_categories
    end
    def self.search_category(index)
        self.all_categories.each.with_index(1) do |key, i|
            if index == i
                puts "#{key[1]}"
            end
        end
    end
end