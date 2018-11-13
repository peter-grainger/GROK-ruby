class Animal
    def initialize
        @typeOfBeast = "Animal"
    end

    def typeOfBeast
        @typeOfBeast
    end
end

class Dog < Animal
    def initialize
        super
        @typeOfAnimal = "Dog"
    end
    def typeOfAnimal
        @typeOfAnimal
    end
end

animal = Animal.new
puts animal.typeOfBeast

dog = Dog.new
puts "A "+dog.typeOfAnimal+" is a type of "+dog.typeOfBeast