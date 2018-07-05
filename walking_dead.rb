 #  Write a program that asks the user for her name and greets her with her name.  Modify the previous program such that only the users Rick, Daryl and Michone are greeted with their names, everyone else is told to go out and find supplies.
 # Make a program (function)
    # - greeting   
    # - comparison (if / else)
    #        - if rick, daryl michone - one message       
    #         - else - different message.

def walking_dead
 #     - ask user for name.
 puts "What is your name?"
 user_name = gets.chomp 

 puts "Hi #{user_name.capitalize}."

  # if user_name == 'rick' || user_name == 'daryl' || user_name == 'michone'
  #  puts "#{user_name.capitalize}, I'm glad you made it back!"
  # else
  #   puts "You're not done yet, go get supplies!"
  # end

valid_names = ["rick", "daryl", "michone"]

if valid_names.include?(user_name) ? puts "good stuff" : puts "bad stuff"

end

walking_dead