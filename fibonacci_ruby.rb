# def fibonnaci
  
#   puts 'How many times did you want to run the fibonnaci sequence?'
#   input = gets.chomp.to_i

#   puts first_val = 0
#   puts second_val = 1
#   third_val
#   input.times do |x|
#     first_val = x + second_val
#   end



# end

# fibonnaci


  def fibonnaci input
    p first = 0
    p second = 1
    input.times do
      p third = first + second
      first = second
      second = third
    end
    puts first
  end

  puts 'enter a number'
  input = gets.chomp.to_i

  fibonnaci input

