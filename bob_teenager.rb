# Bob is an angry teenager that has limited responses. 

# When he is asked a question he simply responds with "Sure"

# When nothing is said to him he responds with "Fine. Be that way."

# When he is yelled at (all uppercase) he responds with "Whoa, Chill Out!"

# All other statements will be responded with "Whatever"


# Create a program that will handle all responses.

class Teenager

  def converse
  	puts "what would you like to say to Bob?"
  	input = gets.chomp.strip
  	evaluate(input)
  end	

  def evaluate input
    empty_string(input) if input == ""
  	shouting(input) if input =~ /[A-Z].*/
  	question(input) if input.end_with?("?")  	
  end

  def question input
  	puts "Sure (question)"
  end

  def empty_string input
  	puts "Fine. Be that way. (empty string)"
  end

  def shouting input
  	puts "Whoa, Chill Out! (all caps)"
  end

  def whatever input
  	puts "Whatever. (catch all / else response)"
  end

end

bob = Teenager.new
bob.converse