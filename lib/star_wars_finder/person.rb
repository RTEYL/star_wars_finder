class Person
    attr_reader :name, :height, :mass, :hair_color, :eye_color, :birth_year, :species, :homeworld
    @@all = Array.new
    def initialize(p_hash)
        p_hash.each do |key, value|
            if self.class.instance_methods.include?(key.to_sym)
                self.instance_variable_set("@#{key}", value)
            end
        end
        @@all << self
    end
    def self.all
        @@all
    end
    def self.top_10
        top_10_arr =
        ["Chewbacca", "C-3PO", "R2-D2", "Palpatine", "Obi-Wan Kenobi", "Luke Skywalker", "Leia", "Yoda", "Han Solo", "Darth Vader"]
        top_10_arr.sort.each { |person| puts "#{person}" }
    end
    def self.search_all
        name = gets.strip.downcase
        if name == "exit"
            exit!
        elsif name.to_f != 0.0
            puts "Entry is not valid"
            sleep(1.5)
            CLI.display_characters
        elsif self.has_name?(name) == false
            puts "The name you listed is not available"
            sleep(1.5)
            CLI.display_characters
        end
    end
    def self.has_name?(name)
        self.all.each do |person|
            if person.name.downcase.match?(name)
                CLI.display_search_res(person)
            else false
            end
        end
    end
    def mass
        @mass = @mass.to_i * 2.205
        "#{@mass.round(2).to_i} lbs."
    end
    def height
        inch = @height.to_i/2.54
        feet = inch/12
        inch = feet.remainder(1) * 12
        "#{feet.to_i} ft. #{inch.round} in."
    end
    def species
        species = API.create_species(@species[0].gsub("https", "http"))
        species.name
    end
end