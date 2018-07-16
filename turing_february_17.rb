arr = ['Ben', 'Ryan', 'Jason', 'Hunter', 'Kj', 'Devan', 'Cody', 'Zach', 'Stephanie', 'Andrew', 'Preston', 'Ian', 'Chase']

counter = 0

while counter <= 2 do 
    x = arr.shuffle
    counter2 = 0
    while counter2 < x.length do 
        p x[counter2]
    
        gets
        counter2 += 1
    end
    p "end of list"
    counter += 1
    gets
end