def times_table
  multiplier = (1..12)
  ones, twos, threes = [], [], []
  
  multiplier.each do |num|

    ones << num
    twos << num * 2
    threes << num * 3
    
  end
  puts ones, twos, threes
end

times_table