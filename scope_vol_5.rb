# class StarWars
  
#   def lightsaber
#     @lightsaber
#   end
 
#   def lightsaber=(color)
#       @lightsaber = color
#   end

# end

class StarWars
  attr_accessor :lightsaber

  def initialize char_name
    @char_name = char_name
  end
end

luke = StarWars.new
p luke.lightsaber
luke.lightsaber = "green"
p luke.lightsaber

vader = StarWars.new
p vader.lightsaber
vader.lightsaber = "red"
p vader.lightsaber

obi = StarWars.new("Obiwan")

p obi.char_name
# class StarWars
#   attr_reader :lightsaber
#   attr_writer :lightsaber
# end

