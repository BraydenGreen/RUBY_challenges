# Binary guessing game where cpu tells you a number is higher or lower from 1 - 25.
require 'pry'

  #random number
#puts @cpu_choice
#guess
class GuessingGame

  def cpu_choice
    @cpu_choice ||= (1..25).to_a.sample
  end

  #puts @user_guess

  #comparison
  def high_low
    cpu_choice
    puts 'Guess a number:'
    @user_guess = gets.chomp.to_i

    #binding.pry
    if @user_guess == @cpu_choice
      puts 'you win!'
    elsif @user_guess > @cpu_choice
      puts 'Too high. Guess again.'
      high_low
    else @cpu_choice < @user_guess
      puts 'Too low. Guess again.'
      high_low
    end
  end
end

game = GuessingGame.new

game.high_low
# BONUS: 
# Give them the option to quit.
# Track the number of guesses.