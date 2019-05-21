class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def cars # listing cars of owner
    Car.all.select {|car| car.owner == self}
  end

  def mechanics # taking list of owners cars and returning the mechanics
    cars.map { |car| car.mechanic }
  end


  def self.all
    @@all
  end

  def self.average_cars_for_owners
    cars_num = Car.all.length
    owners_num = @@all.length
    cars_num.to_f / owners_num
  end
end

# Cars belong to a car owner and a mechanic
# mechanic has a specilization
# Car has a classification
# Car owner owns a car
