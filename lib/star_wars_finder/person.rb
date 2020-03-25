class Person
    @@attrs = ""
    def self.attrs(hash)
        hash.each {|key| @@attrs += (":#{key.first}, ")}
        @@attrs.split(", ").join(", ")
        @@attrs
    end
    @@all = Array.new
    binding.pry
    attr_accessor (@@attrs)
    def initialize(p_hash)
        p_hash.each {|key, value| self.send("#{key}=", value)}
        @@all << self
    end
    def self.all
        @@all
    end
end