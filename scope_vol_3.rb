class Vader
  @@var = 1
end
  
class Luke < Vader
  @@var = 2
end
  
class Vader
  puts @@var   
end

Vader