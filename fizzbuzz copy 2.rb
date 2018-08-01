def fizzbuzz()
  n = 1
  
  while n != 101
    if n % 15 == 0 then puts 'FizzBuzz' 
      elsif n % 5 == 0 then puts'Buzz' 
      elsif n % 3 == 0 then puts 'Fizz' 
      else puts n 
    end
    n += 1 
  end
end

#Testing, It works!
fizzbuzz
