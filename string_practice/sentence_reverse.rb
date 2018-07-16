public

  def reverse_string

    my_str = "The quick brown fox jumps over the lazy dog"
    words_array = my_str.split(/ /)


    letter_array = []
    reversed_array = []
    words_array.each do |words|
       letter_array = words.split(//)        
       letter_array.each do |letters|
          reversed_array << letters
      end
      puts reversed_array
    end

  end
    total_count.downto(1) { |i| reversed_array << str_array[i - 1] }
    reversed_array.join
