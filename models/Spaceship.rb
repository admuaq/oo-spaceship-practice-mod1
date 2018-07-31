class Spaceship

attr_reader :name
attr_accessor :been_to_space

  @@all = []

  def initialize(name, been_to_space=false)
    @name = name
    @been_to_space = been_to_space
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find {|spaceship| spaceship.name == name}
  end

  def self.fresh_spaceship
    self.all.select {|spaceship| spaceship.been_to_space == false}
  end

  def astronauts
    Space_Flight.all.map {|flight| flight.astronaut}
  end

  def add_astronaut(astronaut, misson_name)
    Space_Flight.new(self, astronaut, misson_name)
  end


end
