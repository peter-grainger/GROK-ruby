# Classes

Every object has a class definition.  The built in class definitions include String, Integer, Array.

Create custom classes with the `class` keyword

## Class structure

All classes inherit from [BasicObject](https://ruby-doc.org/core-2.5.3/BasicObject.html) there is no need to implicitly state this.

Some key rubyisms:

- Constructors have the method name `initialize`
- Instance variables have the prefix `@`
- Getters automatically created with the keyword `attr_reader`
- Setters automatically created with the keyword `attr_writer`
- Getters and Setters automatically created with the keyword `attr_accessor`
- Instance variables are by default private
- Instance methods are by default public
- Methods can have access modifier `private`
- Class variables prefixed with `@@`

```ruby
# Definition of an Animal Class
class Animal
    # Shortcut to create a getter for variable
    attr_reader :typeOfBeast

    # class 
    @@name_prefix = 'Animal: '

    # Constructor
    def initialize
        # @ means instance variable
        @typeOfBeast = "Animal"
        @legs = 4
        # Can't access @heads outside of this class
        @heads = 1
    end

    # Getter for legs private instance variable via method
    def legs
        @legs
    end

    def tails
        @tails
    end

    # Protected function tails not accessible outside of class
    private :tails
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

- `protected` attributes prevent direct access but allow through a function or through subclass function indirectly in a function.
- Uses the `<` symbol to mean "extends" or "inherits from"

```ruby
# Generic Animal class
class Animal
    attr_reader :typeOfBeast
    # use protected keyword to prevent direct access
    protected :typeOfBeast
    def initialize
        @typeOfBeast = "Animal"
    end
    def whichType
        # Protected attribute available here
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
```

### Class Inheritance Example

```bash
$ ruby examples/inheritance.rb

A Dog is a type of Animal
```

## TL;DR

### Sites

[Pragmatic Ruby - classes, variables and methods](http://ruby-doc.com/docs/ProgrammingRuby/html/tut_classes.html)
[Ruby Monk - objects chapter](https://rubymonk.com/learning/books/1-ruby-primer/chapters/7-classes/lessons/39-classes)

### Videos

[Ruby Fundamentals - Class methods and variables](https://app.pluralsight.com/player?course=ruby-fundamentals&author=alex-korban&name=ruby-fundamentals-module2&clip=1&mode=live)

[Ruby Fundamentals - Method visibility](https://app.pluralsight.com/player?course=ruby-fundamentals&author=alex-korban&name=ruby-fundamentals-module2&clip=7&mode=live)

## Challenge 🎠

Use Rspec to run the challenges

```bash
bin/rspec spec/challenges/classes_spec.rb --format doc
```

fix [../lib/challenges/challenges/classes.rb](../lib/challenges/challenges/classes.rb) so the tests pass ✔️

## Go to next challenge

[Flow Control](./flow-control)