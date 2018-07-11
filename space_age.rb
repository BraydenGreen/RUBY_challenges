# Space Age

# Write a program that, given an age in seconds, calculates how old someone is in terms of a given planet's 
   # solar years.
# Given an age in seconds, calculate how old someone would be on:
# Earth: orbital period 365.25 Earth days, or 31557600 seconds
# Mercury: orbital period 0.2408467 Earth years
# Venus: orbital period 0.61519726 Earth years
# Mars: orbital period 1.8808158 Earth years
# Jupiter: orbital period 11.862615 Earth years
# Saturn: orbital period 29.447498 Earth years
# Uranus: orbital period 84.016846 Earth years
# Neptune: orbital period 164.79132 Earth years

# Pluto isn't a planet.  They lied to us.

puts "Press 1 to enter your age in Earth years, or 2 to enter the number of seconds."
selection = gets.chomp.to_i


def years
  puts "Enter number of earth years:"
  @earth_years = gets.chomp.to_f
end

def seconds
  puts "Enter number of earth seconds:"
  earth_age_in_seconds = gets.chomp.to_f
  @earth_years = earth_age_in_seconds / 31557600
end

  selection == 1 ? years : seconds
mercury = @earth_years / 0.2408467 
venus =  @earth_years /0.61519726 
mars = @earth_years / 1.8808158 
jupiter = @earth_years / 11.862615 
saturn = @earth_years / 29.447498 
uranus = @earth_years / 84.016846 
neptune = @earth_years / 164.79132 



puts "On Earth you would be: #{@earth_years} years old."
puts "On Mercury you would be: #{mercury} years old."
puts "On Venus you would be: #{venus} years old."
puts "On Mars you would be: #{mars} years old."
puts "On Jupiter you would be: #{jupiter} years old."
puts "On Saturn you would be: #{saturn} years old."
puts "On Uranus you would be: #{uranus} years old."
puts "On Neptune you would be: #{neptune} years old."
puts "Pluto isn't a planet.  They lied to us."