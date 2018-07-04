

p [1, 2, 3, 4, 5].map { |i| i + 1 }


arr  = [1, 2, 3, 4, 5]
arr1 = []

arr.each do |i|
  i = i + 1
  #i += 1
  arr1 << i
end

p arr1

times_three = [1, 2, 3, 4, 5].map {|x| x * 3}

empty_array = []
[1, 2, 3, 4, 5].each do |x|
  empty_array << x *= 3
end
p empty_array
