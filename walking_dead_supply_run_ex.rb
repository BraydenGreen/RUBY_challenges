# Modify the previous program such that only the users Rick, Daryl and Michone are 
#    greeted with their names, everyone else is told to go out and find supplies.


class NameGetter

 def get_name
   puts 'Please input your name:'
   input = gets.chomp.downcase
   say_name(input)
 end

 def say_name input
   puts "Hello #{input.capitalize}."
   name_evaluator(input)
 end

 def name_evaluator input
    user_name = input
    case user_name
      when 'rick'
        puts "Hey Sheriff! Ya'll come back now you hear?"
      when 'michone'
        puts "That's a cool looking sword!"
      when 'daryl'
        puts "Hey, nice crossbow!"
      else
        puts "Hey, we really need you to go out and get supplies."
    end

    
  end
end

new_name = NameGetter.new
new_name.get_name