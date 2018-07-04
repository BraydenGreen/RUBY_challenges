
class StarWars

  attr_accessor :rebel
    
    def initialize
      rebel = 'Han Solo'
      @rebel = 'Leia'
      rebel = 'Luke'
    end

end

a_new_hope = StarWars.new

puts a_new_hope.rebel