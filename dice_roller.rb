require "pry"
#rolls a dice cup

def roll_dice

two_sided = [1,2]
four_sided = (1..4).to_a
six_sided = (1..6).to_a
eight_sided = (1..8).to_a
ten_sided = (1..10).to_a
twelve_sided = (1..12).to_a
twenty_sided = (1..20).to_a

dice_array = []
qty = []
die_type = []
puts 'dice, yo'
qty << gets.chomp.to_i

puts 'type, yo'
die_type << gets.chomp.to_i
binding.pry

counter = qty.count

counter.downto(0) do |x|
  dice_array << twenty_sided.sample
end

puts dice_array

end

roll_dice