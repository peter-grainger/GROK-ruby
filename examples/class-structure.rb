# Definition of an Animal Class
class Animal
    # Shortcut to create a getter for variable
    attr_reader :typeOfBeast

    # Constructor
    def initialize
        # @ points to this object
        @typeOfBeast = "Animal"
        @legs = 4
        # Heads can't be accessed outside of this class
        @heads = 1
        @tails = 1
    end

    # Can only access legs via method
    def legs
        @legs.to_s + " legs"
    end

    def tails
        @tails
    end

    private :tails
end

animal = Animal.new
p animal
puts animal.typeOfBeast
puts animal.legs

puts animal.heads # fails

