class API
    def self.start
        self.get_people
    end
    def self.get_people
        puts "\nLoading...\n\n"
        people = Array.new
        i = 1
        while i < 10 do
            response = HTTParty.get("http://swapi.co/api/people/?page=#{i}")
            response["results"].each{|obj| people << obj}
            i+=1
        end
        self.create_people_objects(people)
    end
    def self.create_people_objects(people)
        people.each {|hash| hash["name"] = Character.new(hash)}
    end
    def self.create_species(species)
        if species.class == String
            species.gsub!("https", "http")
            response = HTTParty.get("#{species}")
            response["name"] = Species.new(response)
        end
    end
    def self.create_homeworld(planet)
        if planet.class == String
            planet.gsub!("https", "http")
            response = HTTParty.get("#{planet}")
            response["name"] = Planet.new(response)
        end
    end
end