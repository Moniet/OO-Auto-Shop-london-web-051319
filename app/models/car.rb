class Car

  attr_reader :make, :model, :owner, :classification, :mechanic

  @@all = []

  def initialize(make:, model:, classification:, owner:, mechanic:)
    @make = make
    @model = model
    @owner = owner
    @mechanic = mechanic
    @classification = classification
    self.class.all << self
  end

  def self.car_classifications
    self.all.map { |car| car.classification }
  end

  def mechanics
    Mechanic.all.select { |mechanic| mechanic.specialty == @classification }
  end

  def self.all
    @@all
  end

end
