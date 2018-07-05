require "pry"
require 'colorize'
require 'colorized_string'
require 'whirly'
require 'paint'

list = %w(Chandler Josh Dan Matt TJ Chris Ozzy Brayden)
class SortingHat

	def self.greeting(list)
	accepted_solo_answers = %w(person select random)
  accepted_team_answers = %w(team teams automagically automagic even pick sort)	
  assigned_team_answers = %w(assign choose manual manually)
		puts "I am the sorting hat."
		sleep 1
		puts "Would you like to select a person at " + "random".colorize(:cyan)
    puts "OR randomly" + " sort".colorize(:yellow) + " students into even" + " teams".colorize(:light_red) + " automagically".colorize(:green)
    puts "OR manually " + "assign".colorize(:light_blue) + " teams (you may turn on auto-fill at any point)."
		input = gets.chomp.strip.downcase
    house = {"gryffindor" => [], "slytherin" => [], "hufflepuff" => [], "ravenclaw" => []} 
    if accepted_solo_answers.include?(input)
      random_person(list) 
    elsif accepted_team_answers.include?(input)
      sort(list, house)
    elsif assigned_team_answers.include?(input)
      assign_team(list, house)
    else
      puts "I'm sorry, please input an accepted answer (ie, team teams OR person random select)"
      greeting(list)
    end
	end		

	def self.random_person list

    randomp = list.shuffle.pop unless list.empty?
    sleep 1
    puts randomp
    sleep 1
    list.delete(randomp)
    puts "Would you like another name? y or n"
    another_name = gets.chomp.strip.downcase
    another_name == 'y' ? random_person(list) : goodbye
	end

  def self.assign_team(list, house)
    puts "Who would you like to assign?"
    puts "Type 'list' to view the list with side by side numbers, or enter the name."
    input = gets.chomp.strip.downcase

    
    
        if input == 'list'
          list.each_with_index do |list_name, i|
            puts "#{(i + 1)}:  #{list_name}"
          end
        puts "Enter the number of the user you want to select."
        user_num = gets.chomp.strip.to_i
        sleep 0.5
        puts "You have selected #{list[user_num-1]}. Which house would you like to assign them to?"
        sleep 0.5
        puts "Type Gryffindor, Slytherin, Hufflepuff, or Ravenclaw:"
        house_choice = gets.chomp.strip

        house["#{house_choice.downcase}"] << list[user_num-1]
        list.delete_at(user_num-1)
      elsif list.include?(input.capitalize)
        puts "You have entered #{input.capitalize}. Which house would you like to assign them to?"
        sleep 0.5
        puts "Type Gryffindor, Slytherin, Hufflepuff, or Ravenclaw:"
        house_choice = gets.chomp.strip

         house_types = %w(gryffindor slytherin hufflepuff ravenclaw)
        if house_types.include?(house_choice)
          house["#{house_choice.downcase}"] << input.capitalize
        else
           puts "Sorry, that was an incorrect choice."
           assign_team(list, house)
         end
        list.delete(input.capitalize)
      else
        puts "Sorry, I don't know that name."
           assign_team(list, house)
      end
        sleep 0.5


        puts "Would you like to add another? y for yes, otherwise we will auto-fill the rest."
        again = gets.chomp.strip.downcase

        again == 'y' ? assign_team(list, house) : sort(list, house)
     
  end

	def self.sort(list, house)
	
    list.shuffle.each do |title|
      Whirly.start spinner: "clock", interval: 1000, stop: "⏰" do
        choice = []
        max_house_value = 0
        house.values.each {|i| i.count > max_house_value ? max_house_value = i.count : i}
        total_gryffs = house["gryffindor"].count
        total_slyths = house["slytherin"].count
        total_huffles = house["hufflepuff"].count
        total_ravens = house["ravenclaw"].count

          while total_gryffs < max_house_value 
            choice << "gryffindor"
            total_gryffs += 1
          end

          while total_slyths < max_house_value
            choice << "slytherin"
            total_slyths += 1
          end
          
          while total_huffles < max_house_value
            choice << "hufflepuff"
            total_huffles += 1
          end
          
          while total_ravens < max_house_value
            choice << "ravenclaw"
            total_ravens += 1
          end
        
        choice.empty? ? choice = %w(gryffindor slytherin hufflepuff ravenclaw) : choice
        chosen = choice.shuffle.pop
    
        house["#{chosen}"] << title
  
  
        Whirly.status = "#{title} is being sorted." 
          sleep 2
        Whirly.status = "Hmm... maybe #{choice.sample}?"
          sleep (1..2).to_a.shuffle.pop

        choice.delete_at(choice.index(chosen))

        print_house(chosen, title)
        Whirly.status = "#{title} was sorted into #{chosen.capitalize}"

	    end
	 end
   total_house_printout(house)
  end
	
	def self.total_house_printout(house)
   sleep 1
	 puts ""
	 puts "---------------------"
	 puts "Gryffindor Team".colorize(:light_red)
	 puts house["gryffindor"]
	 puts "---------------------"
	 sleep 1
	 puts ColorizedString["Slytherin Team"].colorize(:green)
	 puts house["slytherin"]
	 puts "---------------------"
	 sleep 1
	 puts ColorizedString["Hufflepuff Team"].colorize(:yellow)
	 puts house["hufflepuff"]
	 puts "---------------------"
	 sleep 1
	 puts ColorizedString["Ravenclaw Team"].colorize(:cyan)
	 puts house["ravenclaw"]
	 puts "---------------------"
	
   goodbye
  end

  def self.print_house(chosen,title)
    case chosen
      when "slytherin"
        puts "You crave power and order. #{title} was made for Slytherin!".colorize(:green)
      when "gryffindor"
        puts "You have courage and heart. It better be Gryffindor for #{title}!".colorize(:light_red)
      when "ravenclaw"
        puts "What wit and learning! Ravenclaw is the place for #{title}.".colorize(:cyan)
      when "hufflepuff"
        puts "What a hardworker! So patient and loyal. #{title}, your house is Hufflepuff!".colorize(:yellow)
    end
    sleep 1
  end

  def self.goodbye
    puts "Prefects, please escort these students into their new houses."
  end

end

SortingHat.greeting(list)
