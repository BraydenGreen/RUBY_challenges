class Ball
  
  def bouncy?
    true
  end

end

spaceball = Ball.new

p spaceball.bouncy?

class StarWars

  def initialize
    @vader = true
  end

  def i_am_your_father?
     puts @vader
  end

end

empire = StarWars.new
empire.i_am_your_father?












