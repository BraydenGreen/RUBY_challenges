# Calculate the number of gold pieces on a chessboard given that the number on each square doubles.

# There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have gold pieces. One gold piece on the first square of a chess board. Two gold pieces on the next. Four on the third, and so on.

# There are 64 squares on a chessboard.

# Write code that shows:

# how many gold pieces were on each square, and
# the total number of gold

class TotalGoldFinderOuter
TOTAL_SQUARES = 64
  def square(number)
    2 ** (number - 1)
  end

  def total
    (1..TOTAL_SQUARES).inject { |sum, n| sum + p square(n) }
  end
end

my_gold = TotalGoldFinderOuter.new

puts my_gold.total
  #how many gold pieces were on each square, and
  


  #the total number of gold


