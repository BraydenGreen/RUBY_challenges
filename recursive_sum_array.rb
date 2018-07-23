require 'pry'

my_array = (1..10).to_a


def recursive_sum_array arr 

  if arr.empty?
    0
  else
    head, *tail = arr
    binding.pry
    head + recursive_sum_array(tail)
  end

end

p recursive_sum_array(my_array)

# def factorial_recursive(n)
#   if n == 0
#     1
#   else 

#     return n*factorial_recursive(n-1)
#   end
# end

# def factorial_recursive(num)
#   num == 0 ? 1 : num*factorial_recursive(num-1)
# end

# p factorial_recursive 5

