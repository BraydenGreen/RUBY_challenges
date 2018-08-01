my_array = %w(1r 2b 3r 4b 5r 6b 7r 8b 9r)

red_array = []
black_array = []

my_array.each_index { |i| i.odd? ? red_array << i : black_array << i }

p red_array
p black_array