def add_book(genre, author: 'unknown', title: 'unknown')
    puts "#{genre.to_s.capitalize} book by #{author}: #{title}"
end

add_book(:crime, author: 'No Jësbo', title: 'The boy who played with a lighter')

def add_complex_book(genre, author: 'unknown', title: 'unknown', **extras)
    puts "#{genre.to_s.capitalize} book by #{author}: #{title} Extras: #{extras.map {|key, value| "#{key}: #{value}"}.join(' ')}"
end

add_book(:crime, author: 'No Jësbo', title: 'The boy who played with a lighter')

add_complex_book(:psycological, author: 'Haula Pawkins', title: 'Man on a bus', restricted: 18)