ValidOperations = ['+', '-', '/', '*']

def get_number
  print "Please select a number:"
  @number1 = gets.to_i
end

def select_operation
    puts "Please select an operation (+ = addition, - = subtraction, multiplication = *, / = division):"
    op = gets.strip
    if ValidOperations.include? op.split('').first
      @operation = op
    else
      puts  "Please enter a valid operation."
      #TODO user re-enters
    end
end

def second_num 
  print "Please select an additional number:"
  @number2 = gets.to_i
end

def calculate
     case @operation
       when '+'
        value = @number1 + @number2
        when '-'
        value = @number1 - @number2
        when '*'
        value = @number1 * @number2
        when '/'
        value = @number1 / @number2
      end
    puts "Your answer is #{value}"

end

def runcalc
  get_number
  select_operation
  second_num
  calculate
end

runcalc


  
