def create_bookshop(quantity = 0, *books)
    puts "#{quantity} books: #{books.join(', ')}"
end

create_bookshop(2, *['War of Worlds', 'The Hobbit'])
create_bookshop(2, 'War of Worlds', 'The Hobbit')