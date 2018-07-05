require_relative "rock_paper_win_conditionals"

puts rock_win
puts spock_loss

class Rpslsp
  
  def user_choice
    @player_score ||= 0
    puts "what do you choose: Rock, Paper, Scissors, Lizard or Spock"
    input = gets.chomp.downcase.strip
    comparison(input)
  end

  def comparison input
     cpu = %w(scissors)
     cpu_choice = cpu.sample

     case input
      when "rock"
          case cpu_choice
            when "scissors", "lizard" 
              send("#{input}_win", cpu_choice)
            when "paper", "spock"
              send("#{input}_loss", cpu_choice)
          end
      when "paper"
          case cpu_choice
            when "rock", "spock"
              send("#{input}_win", cpu_choice)
            when "scissors", "lizard" 
              send("#{input}_loss", cpu_choice)
          end
       when "scissors"
          case cpu_choice
            when "lizard", "paper"
              send("#{input}_win", cpu_choice)
            when "rock", "spock" 
              send("#{input}_loss", cpu_choice)
          end
       when "lizard"
          case cpu_choice
            when "spock", "paper"
              send("#{input}_win", cpu_choice)
            when "rock", "scissors" 
              send("#{input}_loss", cpu_choice)
          end
        when "spock"
          case cpu_choice
            when "rock", "scissors"
              send("#{input}_win", cpu_choice)
            when "paper", "lizard" 
              send("#{input}_loss", cpu_choice)
          end
      end

  end

  def rock_win cpu_choice
    p rock_win.sample
    p binding.local_variable_get("#{cpu_choice}_loss").sample
  end

  def paper_win cpu_choice
    p rock_win.sample
    p binding.local_variable_get("#{cpu_choice}_loss").sample
  end

  def scissors_win cpu_choice
    p rock_win.sample
    p binding.local_variable_get("#{cpu_choice}_loss").sample
  end

  def lizard_win cpu_choice
    p rock_win.sample
    p binding.local_variable_get("#{cpu_choice}_loss").sample
  end

  def spock_win cpu_choice
    p rock_win.sample
    p binding.local_variable_get("#{cpu_choice}_loss").sample
  end

  def play_again
    puts "Would you like to play again? Type 'exit' to exit, or enter any phrase to continue."
    again = gets.chomp.strip

    user_choice unless again == "exit"
  end

  def lose input
    puts "losey lose"
  end

end

new_game = Rpslsp.new
new_game.user_choice