class Tutor
  
  def greeting 
    puts 'Welcome to the Ruby Arithmetic Tutor'

    puts 'What is your name?'

    user = gets.chomp.to_s

    puts "Hello, #{user}"

    puts "Press enter to start quiz:"
    start = gets.chomp
    # TODO, give option to exit
  end

  def quiz
    greeting
    
    @guesses = []
    puts """
    
         What is 2 + 2?"""
    guess1 = gets.chomp.to_i
      if guess1 == 4
        puts "Correct!"
      else 
        puts "I'm sorry, the answer was #{2+2}."
        guess1 = false
      end
    @guesses << guess1

    puts ""
    puts ""
    puts "What is 1 + 1?"
    guess2 = gets.chomp.to_i
      if guess2 == 2
        puts "Correct!"
      else 
        puts "I'm sorry, the answer is #{1+1}."
        guess2 = false
      end
    @guesses << guess2

    puts ""
    puts ""
    puts "What is 3 + 2?"
    guess3 = gets.chomp.to_i
      if guess3 == 5
        puts "Correct!"
      else 
        puts "I'm sorry, the answer is #{3+2}"
        guess3 = false
      end
    @guesses << guess3

    puts ""
    puts ""
    puts "What is 4 + 2?"
    guess4 = gets.chomp.to_i
      if guess4 == 6
        puts "Correct!"
      else 
        puts "I'm sorry, the answer is #{4+2}"
        guess4 = false
      end
    @guesses << guess4

    puts ""
    puts ""
    puts "What is 3 + 9?"
    guess5 = gets.chomp.to_i
      if guess5 == 12
        puts "Correct!"
      else 
        puts "I'm sorry, the answer is #{3+9}"
        guess5 = false
      end
    @guesses << guess5

  end

  def results
    quiz

    right_answers = []

    @guesses.each do |x|
      if x != false
        right_answers << x
      end
    end
    puts "You got #{right_answers.count} out of 5 answers right."

    
  end


end


new_quiz = Tutor.new

new_quiz.results
