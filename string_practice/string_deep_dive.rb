require_relative 'display_string'
debug = Debug.new

str = "Lorem ipsum dolor sit amet, consectetur adipisicing elit"
str2 = str

puts "str:"
debug.display_string str
puts
puts "str2:"
debug.display_string str2