def sorting_hat
  student_array = %w(Ryan Chase KJ Hunter Devan Zach Ben Stephanie Ian Alex Preston Andrew Jason) 
  sorted_array = []

  students = student_array.count

  while students > 0
    random_num = rand students
      
      sorted_array_var = student_array.delete_at(random_num)
      
      sorted_array << sorted_array_var 
  
    students -= 1 
  end
  
  print sorted_array

end

sorting_hat