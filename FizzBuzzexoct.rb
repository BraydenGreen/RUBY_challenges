# FizzBuzz

# 1 to 100.

# Every number that is divisble by 5 print "Buzz"
# Every number that is divisble by 3 and 5 print "FizzBuzz"

# Otherwise, just print the number


# BONUS: Figure out how to do a range of numbers based on input.


# 1 to 100.
#a = (1..100).to_a

1.upto(100) do |num|
	
	# Every number that is divisble by 3 print "Fizz"
	if num % 15 == 0
		puts "FizzBuzz"
	elsif num % 3 == 0
		puts "Fizz"
	elsif num % 5 == 0
		puts "Buzz"
	else	
		puts num
	end

end


