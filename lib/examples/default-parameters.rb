def create_shelter(cats = 1, mice = 1, dogs)
    puts "#{cats} cats, #{mice} mice and #{dogs} dogs"
end

def create_big_shelter(lion, elephant = 3, tigers = 9, giraffe)
    puts "#{lion} lions, #{elephant} elephants, #{tigers} tigers and #{giraffe} giraffes"
end

create_shelter(4)
create_shelter(2, 5, 7)
create_shelter(2, 5)

create_big_shelter(9, 4)
create_big_shelter(9, 4, 2)