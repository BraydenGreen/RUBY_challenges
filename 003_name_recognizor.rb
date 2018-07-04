  # Modify the previous program such that only the users Rick, Daryl or Michone are greeted with their names

def greeting

    puts 'What is your name?'
    input = gets.chomp.downcase

     if input == 'rick' || input == 'daryl' || input == 'michone'
      puts "Hello, #{input.capitalize}.  Please be careful out there."
        else
      puts "I'm sorry, you aren't from the Walking Dead and I only talk to famous people"
     end 

    # unless statement
    # unless input == 'rick' || input == 'daryl' || input == 'michone'
    #  puts "I'm sorry, you aren't from the Walking Dead and I only talk to famous people"
    #  else
    #  puts "Hello, #{input.capitalize}.  Please be careful out there."
    # end

    #  Case statement
    #  case input
    #     when "rick"
    #      puts "Hello, #{input.capitalize}.  Please be careful out there."   
    #     when "michone"
    #       puts "Hello, #{input.capitalize}.  Please be careful out there."   
    #   when "daryl"
    #   puts "Hello, #{input.capitalize}.  Please be careful out there."   
    #  else
    #   puts "I'm sorry, you aren't from the Walking Dead and I only talk to famous people"
    # end

end

greeting 


