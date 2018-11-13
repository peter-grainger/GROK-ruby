# Generic Animal class
class Animal
    attr_reader :typeOfBeast
    protected :typeOfBeast
    def initialize
        @typeOfBeast = "Animal"
    end
    
    def whichType
        @typeOfBeast
    end
end

# Specific Dog class
class Dog < Animal
    attr_accessor :typeOfAnimal
    def initialize
        # Call to Animal constructor
        super
        @typeOfAnimal = "Dog"
    end
end

animal = Animal.new
# animal.typeOfBeast Fails because it is protected

dog = Dog.new
puts "A "+dog.typeOfAnimal+" is a type of "+dog.whichType