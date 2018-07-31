class Astronaut

  attr_reader :name
  attr_accessor :age, :been_to_space

  @@all = []

  def initialize(name, age, been_to_space=false)
    @name = name
    @age = age
    @been_to_space = been_to_space
    @@all << self
  end

  def self.all
    @@all
  end

  # def select_all
  #
  # end

  def self.eldest
    self.all.max_by {|astronaut| astronaut.age }
  end

  def self.been_to_space?
    self.all.select {|astronaut| astronaut.been_to_space == true}
  end

  def self.find_all_by_name(name)
    self.all.select {|astronaut| astronaut.name == name}
  end

  def space_flights
    flights = Space_Flight.all.select {|flight| flight.astronaut == self}
    flights.count
  end

  def spaceships
    flights = Space_Flight.all.select {|flight| flight.astronaut == self}
    flights.map {|flight| flight.spaceship.name}.join(", ")
  end

  def add_spaceship(spaceship, mission_name)
    flight =Space_Flight.new(spaceship, self, mission_name)
  end
end
