require 'pry'
# REQ's
# Valid numbers are in the range 27 to 127.
# Clocks must support two modes of computation.
# The first mode takes a single parameter specifying the number of balls and reports the number of balls given in the input and the number of days (24-hour periods) which elapse before the clock returns to its initial ordering.
  # - Sample Input - 30 balls cycle after 15 days, 45 balls cycle after 378 days.
# The second mode takes two parameters, the number of balls and the number of minutes to run for.  If the number of minutes is specified, the clock must run to the number of minutes and report the state of the tracks at that point in a JSON format.
  #   Sample Input - 30 325 
  #     Output for the Sample Input
          #{"Min":[],"FiveMin":[22,13,25,3,7],"Hour":[6,12,17,4,15],"Main": [11,5,26,18,2,30,19,8,24,10,29,20,16,21,28,1,23,14,27,9]}


# Developing Steps          
# 1. add minute ball function
# 2. check to see if minute array is full.  If so, empty contents in reverse order of minute array into main pool, AND also take minute ball input to five_minute array.
# 3. upon taking a ball to five_minute_array, I would also check to see if that is full before delivery.  In the event it is full, I would deliver minute ball contents to the main pool in reverse order, and add the new five minute ball to the hour array.
# 4. upon taking the five minute ball to the hour array, I would check to see if that array is full, having 11 elements. If it is, I would return that arrays contents, in reverse order, with the 5_minute_ball taking place in the main pool last.

MINUTE_ARRAY = []
FIVE_MINUTE_ARRAY = []
HOUR_ARRAY = []
DAY_COUNTER = []

def gather_input
  puts "Please enter the number of balls you would like to input (limit 27, Max 127):"
  input = gets.chomp
  if input =~ /^\d{1,3}$/
    (input.to_i < 127 && input.to_i >= 27) ? num_balls = input.to_i : gather_input 
  else
    puts "Incorrect Input. You must enter a number 1-100. Try Again."
    sleep 1.5
    gather_input
  end
end


def add_minute_ball
  if MINUTE_ARRAY.count < 4 
    MINUTE_ARRAY << MAIN_POOL.shift 
  else 
    4.times do |x|
      MAIN_POOL << MINUTE_ARRAY.pop 
    end
    add_ball_to_five_minute_rack(MAIN_POOL.shift)
  end
end

def add_ball_to_five_minute_rack(ball)
  if FIVE_MINUTE_ARRAY.count < 11 
    FIVE_MINUTE_ARRAY << ball
  else 
    11.times do |x|
      MAIN_POOL << FIVE_MINUTE_ARRAY.pop 
    end
    add_ball_to_hour_rack(ball)
  end
end

def add_ball_to_hour_rack(ball)
  if HOUR_ARRAY.count < 11
    HOUR_ARRAY << ball 
  else 
    11.times do |x|
      MAIN_POOL << HOUR_ARRAY.pop
    end
    MAIN_POOL << ball
    DAY_COUNTER << 0.5
  end
end

MAIN_POOL = (1..gather_input).to_a
ORIGINAL_ARRAY = MAIN_POOL.clone

def main
  add_minute_ball
  add_minute_ball until MAIN_POOL == ORIGINAL_ARRAY
  
  p DAY_COUNTER.sum
end

main