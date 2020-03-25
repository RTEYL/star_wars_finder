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
end