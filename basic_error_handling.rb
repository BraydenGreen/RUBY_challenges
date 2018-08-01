begin
  puts 8/0
rescue ZeroDivisionError => e
  puts "Error occured: #{e}"
end