arr = [1,2,3,4,5]

p arr.map! {|i| i + 1}

p arr

puts "Enter your name:"
input = gets.chomp.downcase!

p input

puts "Hi #{input.reverse}! Thanks for signing in."