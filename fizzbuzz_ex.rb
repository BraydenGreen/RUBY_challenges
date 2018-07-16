# The "Fizz-Buzz test" is an interview question designed to help filter out the 99.5% of programming job candidates who can't seem to program their way out of a wet paper bag. 
# The text of the programming assignment is as follows:



# "Write a program that prints the numbers from 1 to 100. 
# for multiples of three print “Fizz” instead of the number 
# for the multiples of five print “Buzz”. 
# For numbers which are multiples of both three and five print “FizzBuzz”."

# from 1 to 100
1.upto(100) do |number|
# multiples of three print “Fizz”
# multiples of five print “Buzz”
  if number % 3 == 0 && number % 5 == 0
    puts 'FizzBuzz'
  elsif number % 3 == 0
    puts 'Fizz'
  elsif number % 5 == 0
    puts 'Buzz'
  else
    puts number
  end
end





# multiples of three and five print “FizzBuzz”

# otherwise print number


