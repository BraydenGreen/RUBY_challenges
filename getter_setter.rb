class Jedi
  
  def lightsaber
    @lightsaber
  end

  def lightsaber=(value)
    @lightsaber = value
  end

end

j = Jedi.new

p j.lightsaber


def response

  case @user_name
    when 'Mark'
      puts "Hi Mark, you are mighty handsome today!"
    when 'Michone'
      puts "Hi Michone, nice sword!"
    when 'Rick'
      puts "Hi Sheriff, I like the beard!"      
    when 'Daryl'
      puts "Hi Daryl, nice crossbow!"      
    else
      puts "You know what I don't care. Make yourself useful and find supplies, then we will see if your worthy of even having a name."
  end
end

