#FizzBuzz

class FizzBuzz

  def pick_a_range

    puts "pick a number from 1 to 1000 and I will convert all the divisibles of 3 to the word Fizz, the divisibles of 5 o Buzz and both to Fizzbuzz"
    user_num = gets.chomp.to_i

    fizzbuzz(user_num)
  end

  def fizzbuzz num
    
    1.upto(num) do |num|
      if (num % 3 == 0) && (num % 5 == 0)
        puts "fizzbuzz"
      elsif num % 3 == 0
        puts "fizz"
      elsif num % 5 == 0
        puts "buzz"
      else
        puts num
      end 
  end
  
  end
end

my_fizz = FizzBuzz.new

my_fizz.pick_a_range