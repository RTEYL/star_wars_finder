class Planet
  attr_reader :name, :terrain, :population
  def initialize(planet)
    @name = planet["name"]
    @terrain = planet["terrain"]
    @population = planet["population"]
  end
end