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

## Inheritance