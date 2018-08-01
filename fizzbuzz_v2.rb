(1..100).each do |x|

  if x % 3 == 0 && x % 5 == 0
    puts 'fizzbuzz'
  elsif x % 3 == 0
    puts 'Fizz'
  elsif x % 5 == 0
    puts 'Buzz'
  #print fizzbuzz if div by 3 and 5
  else 
    puts x
  end
end