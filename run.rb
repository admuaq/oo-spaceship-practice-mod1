require "pry"
require_relative "./models/Spaceship.rb"
require_relative "./models/Astronaut.rb"
require_relative "./models/Space_Flight.rb"

keane = Spaceship.new("Keane", true)
marshall = Spaceship.new("Marshall", false)
enterprise = Spaceship.new("Enterprise", true)

kirk = Astronaut.new("Kirk", 25, true)
spock = Astronaut.new("Spock", 200, true)
ray = Astronaut.new("Ray", 18, false)
raysr = Astronaut.new("Ray", 52, true)

enterprise.add_astronaut(spock, "The Final Frontier")
marshall.add_astronaut(ray, "To be determined")
keane.add_astronaut(spock, "Another day in deep Space")
enterprise.add_astronaut(kirk, "The Final Frontier")
keane.add_astronaut(kirk, "Another day in deep Space")
keane.add_astronaut(raysr, "Another day in deep Space")
enterprise.add_astronaut(raysr, "The Final Frontier")
marshall.add_astronaut(raysr, "To be determined")


binding.pry
0
