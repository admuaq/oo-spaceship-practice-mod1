class Space_Flight

attr_reader :Space_Flights
attr_accessor :spaceship, :astronaut, :mission_name

  @@space_flights = []

  def initialize(spaceship, astronaut, mission_name)
    @spaceship = spaceship
    @astronaut = astronaut
    @mission_name = mission_name
    @@space_flights << self
  end

def self.all
  @@space_flights
end

def self.mission_names
  missions = self.all.map {|flight|
    puts "The mission name of this spaceship is #{flight.mission_name}."
  }

end

end
