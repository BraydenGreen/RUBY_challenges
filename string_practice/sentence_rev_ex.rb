# Reverse a string of words without using reverse.  Spaces should be held intact.

# "The quick brown fox jumps over the lazy dog." should be:

# "Eht kciuq nworb xof spmuj revo eht yzal god."


def reverse_string_on_spaces


  words_array = my_string.split(/ /)

  #split over each item in the array, but this time by character.


  letter_array = []
  reversed_array = []
  words_array.each do |words|
    letter_array = words.split(//) 
    
    total_count = letter_array.count
    total_count.downto(1) { |i| reversed_array << letter_array[i - 1] }

    
  end
    p reversed_array

    reversed_array.join
end

"The quick brown fox jumps over the lazy dog".reverse_string_on_spaces