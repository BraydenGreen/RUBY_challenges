#Reverse a string without using .reverse

public

  def reverse_string
    str_array = self.split(//)
    reversed_array = []
    str_array.count.downto(1) { |i| reversed_array << str_array[i - 1] }
    reversed_array.join
  end

puts "Brayden Green fdasfdsaf dsa fdsa fdsa fdsa fas".reverse_string

p "fdsafdsa fda efrewat4t4 arg reag asdfasdf".chars.reduce { |a, b| b + a }


  