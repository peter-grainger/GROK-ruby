
def legallyDrink?(age)
    age >=18
end

def inUK?(country)
    country == 'England' or 
    country == 'Wales' or 
    country == 'Scotland'
end

def drink
    puts "woo"
end

puts foo ||= "initial"
puts foo = foo == "initial" && "wizz"
puts "foo is actually wizz!" if foo == "wizz"
puts foo.is_a?(String) && foo.upcase
legallyDrink?(19) and inUK?("England") and drink
