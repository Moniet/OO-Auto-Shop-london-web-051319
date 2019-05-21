class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    self.class.all << self
  end

  def cars
    Car.all.select {|car| car.mechanic == self}
  end

  def car_owners
    cars.map { |car| car.owner }
  end

  def car_owners_by_name
    car_owners.map { |owner| owner.name }
  end

  def self.all
    @@all
  end

end
