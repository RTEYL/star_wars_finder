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
        people.each {|hash| hash["name"] = Person.new(hash)}
    end
end