#Produce the lyrics to that beloved classic, that field-trip favorite: 99 Bottles of Beer on the Wall.

#99 bottles of rb on the wall, 99 bottles of rb.
#98 bottles of rb on the wall, 99 bottles of rb.
#97 bottles of rb on the wall, 99 bottles of rb.
#96 bottles of rb on the wall, 99 bottles of rb.
#95 bottles of rb on the wall, 99 bottles of rb.
#94 bottles of rb on the wall, 99 bottles of rb.

#static lyrics repeat,


99.downto(1) do |number|
  if number == 1 
    puts "One bottle of beer on the wall, One bottle of beer.  You take one down, pass it around, No more bottles of beer on the wall."
    break
  end
  puts "#{number} bottles of beer on the wall, #{number} bottles of beer.  You take one down, pass it around #{number - 1} bottles of beer on the wall."
end

