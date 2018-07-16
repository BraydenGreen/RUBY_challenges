class Fizzbuzz


  def get_num
    puts '''Welome to FizzBuzz.  I give you numbers in between a range that 
            you specify.  But sometimes I yell out Fizz or Buzz '''
    @user_num = gets.chomp.to_i
    puts    'Please input your second number in the range:'
    @second_num = gets.chomp.to_i
    selector
  end

  def selector
    get_num
    num = @user_num
    counter = @second_num

    until num == counter + 1
      if num % 15 == 0
        puts 'FizzBuzz'
      elsif num % 3 == 0 
        puts 'Fizz'
      elsif num % 5 == 0 
        puts 'Buzz'
      else puts num
      end
      num += 1
    end

  end

end

new_fizz = Fizzbuzz.new

new_fizz.selector