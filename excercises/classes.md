# Classes

Every object has a class definition.  The built in class definitions include String, Integer, Array.

Create custom classes with the `class` keyword

## Class structure

All classes inherit from [BasicObject](https://ruby-doc.org/core-2.5.3/BasicObject.html) there is no need to implicitly state this.

Some key rubyisms:

- constructors have the function name `initialize`
- instance variables have the prefix `@`
- Getters automatically created with the keyword `attr_reader`
- Setters automatically created with the keyword `attr_writer`
- Getters and Setters automatically created with the keyword `attr_accessor`
- Instance variables are by default private
- Instance functions are by default public

```ruby
# Definition of an Animal Class
class Animal
    # Shortcut to create a getter for variable
    attr_reader :typeOfBeast

    # Constructor
    def initialize
        # @ means instance variable
        @typeOfBeast = "Animal"
        @legs = 4
        # Can't access @heads outside of this class
        @heads = 1
    end

    # Getter for legs private instance variable via function
    def legs
        @legs
    end
end
```

### Class Structure Example

This script will fail with the error that `undefined method 'heads'`.  See if you can fix it 🛠

```bash
$ ruby examples/class-structure.rb

#<Animal:0x00007fa0eb077108 @typeOfBeast="Animal", @legs=4, @heads=1>
Animal
4 legs
Traceback (most recent call last):
examples/class-structure.rb:26:in `<main>': undefined method `heads' for #<Animal:0x00007fa0eb077108> (NoMethodError)
```

## Inheritance

Ruby supports single inheritance.  Multiple inheritance is not supported

```ruby
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
```