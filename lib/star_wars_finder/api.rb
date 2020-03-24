class API

    @@all_categories = HTTParty.get("https://swapi.co/api/")

    def self.all_categories
        @@all_categories
    end
    def self.search_category(index)
        self.all_categories.each.with_index(1) do |key, i|
            if index == i
                category = ("#{key[1]}")
            end
            category
        end
        
    end
    def self.search_all(category_url)
        
    end
end