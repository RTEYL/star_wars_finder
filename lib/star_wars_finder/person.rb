class Person
    @@all = Array.new
    def initialize(p_hash)
        p_hash.each do |key, value|
            self.instance_variable_set("@#{key}", value)
            self.class.class_eval("def #{key};@#{key};end")
        end
        @@all << self
    end
    def self.all
        @@all
    end
    def self.top_10
        top_10_arr = ["Chewbacca", "C-3PO", "R2-D2", "Palpatine", "Obi-Wan Kenobi", "Luke Skywalker", "Leia", "Yoda", "Han Solo", "Darth Vader"]
        self.all.each do |person|
            puts "#{person.name}" if top_10_arr.include?(person.name)
        end
    end
end