require 'pry'

# recursive_countdown

# 10.downto(1) do |number|

#   number

# end

# def recursive_countdown(attempt)
  
#   #base case
#   return if attempt.zero?
#     #if we get down to zero, return the culmination of
#       #what you have been doing.
  
#   puts attempt
#     #we are printing the number here, because it gives
#       #us the countdown we are going for.
  
#   recursive_countdown(attempt-1)
#     #so here we are calling the method, and passing it the
#       #attempt minus one to countdown.

# end

# recursive_countdown(10)

# my_array = [1,2,3,4,5,6]

# def sum_array(arr)
#   total_sum = 0
  
#   arr.each do |element|
#     total_sum += element
#   end

# end

# p sum_array(my_array)

# my_array = [1,2,3,4,5,6]

# def sum_array_recursive(arr)
  
#   if arr.empty?  #base case
#     0
#   else
#     head, *tail = arr
#     binding.pry
#     head + sum_array_recursive(tail)
#   end
# end

# p sum_array_recursive(my_array)

def factorial_iterative number
  if number == 0 || number == 1
    1  
  else
    sum = 1
    number.times do |n|
      sum *= (n + 1) # sum = sum * (num + 1) 1, 2, 6, 24, 120
    end
    puts sum
  end
end

factorial_iterative(5)

