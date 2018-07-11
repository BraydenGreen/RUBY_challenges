require 'pry'

def rollcall
  student_array = %w(Ryan Alex Trevor Elise Dave Jared Aaron Derek Kaid Dallas)

  present_students = []
  absent_students = []
  student_array.each do |x|
    puts "Is #{x} here? y or n"
    input = gets.chomp.downcase
    input == 'y' ? present_students << x : absent_students << x

  end
  
  day = Time.now

  my_file = File.new("attendance/#{day}.txt", "w+")
  nice_here = []
  nice_absent = []
  present_students.each { |i| nice_here << i }
  final_present = nice_here.join(' ')
  my_file << "Students Here: \n "
  my_file << final_present  

  2.times { |i| my_file << "\n" }
  50.times { |i| my_file << "*" }
  2.times { |i| my_file << "\n" }

  absent_students.each { |i| nice_absent << i }
  final_absent = nice_absent.join(' ')
  my_file << "Students Absent: \n "
  my_file << final_absent

end

rollcall