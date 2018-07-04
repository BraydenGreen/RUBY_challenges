require 'pry'
require 'byebug'

# - Computer places their piece 
# - Updated result is shown to the user
# - Game ends and results are given. Player either wins or loses (note: the game should recognize winning combos) 
# - MVP is just a basic tic tac toe
# Bonus
# "what problem am I trying to solve (right now)?"
# - Print out the board 

grid = {  "1" => "X", "2" => "Y", "3" => "Z",
          "4" => "X", "5" => "O", "6" => "Y",
          "7" => "X", "8" => "O", "9" => "Y"  }

# - Allow player to select where they place their x or o 

def display_board grid
  puts " #{grid["1"]} | #{grid["2"]} | #{grid["3"]} "
  puts "-----------"
  puts " #{grid["4"]} | #{grid["5"]} | #{grid["6"]} "
  puts "-----------"
  puts " #{grid["7"]} | #{grid["8"]} | #{grid["9"]} "

  eval_rows(grid)

end

def eval_rows grid
  x_values = []
  o_values = []
  binding.pry
  grid.values.each_with_index {|i, ind| x_values << ind if i == "X" }
  grid.values.each_with_index {|i, ind| o_values << ind if i == "O" }

  win_conditions(x_values, o_values)
end

def win_conditions x_val, o_val
  
  win_conditions = [ 
                    [0, 1, 2], [3, 4, 5], [6, 7, 8],
                    [0, 3, 6], [1, 4, 7], [2, 5, 8],
                    [0, 4, 8], [2, 4, 6] 
                   ]

  x_win = win_conditions.select {|i| (i - x_val).empty? }
  o_win = win_conditions.select {|i| (i - o_val).empty? }
    
end

display_board(grid)