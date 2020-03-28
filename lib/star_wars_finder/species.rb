class Species
  attr_reader :name, :classification, :average_lifespan
  def initialize(species)
    @name = species["name"]
    @classification = species["classification"]
    @average_lifespan = species["average_lifespan"]
  end
end