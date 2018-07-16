module Bottles
  x = 99
end


class HowMany
  
  include Bottles

  1.times do |x|
    x -= 1
    puts "#{x} bottles of beer on the wall."
  end

end