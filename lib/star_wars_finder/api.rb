class API

    @@all_categories = HTTParty.get("https://swapi.co/api/")

    def self.all_categories
        @@all_categories
    end
end