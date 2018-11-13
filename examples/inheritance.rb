# Generic Animal class
class Animal
    attr_accessor :typeOfBeast
    def initialize
        @typeOfBeast = "Animal"
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
puts animal.typeOfBeast

dog = Dog.new
puts "A "+dog.typeOfAnimal+" is a type of "+dog.typeOfBeast