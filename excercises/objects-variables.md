# Classes Objects and Variables

## Key Concepts

- Ruby is a true object orientated language, everything in Ruby is an object, there are no primitives, all numbers / characters / booleans inherit from Object and have and object ID

- Ruby is loosely typed you can not declare a variables type

## Variables

You can not set the scope or the type.  i.e. `const` or `String` of a variable.  variables are private by default

```ruby
file://lib/examples/variables.rb
```

## Objects

A number, boolean and string are all objects in Ruby

```ruby
file://lib/examples/objects.rb
```

The above is shorthand syntax for creating the object and initializing it with a value.  The string object provides a constructor which is an alias

When assigning an object to a variable the variable holds a reference to the object.  It does not create a new object with the same value

```ruby
file://lib/examples/object-reference.rb
```

Note that the `.clone` method is a shallow copy, nested references **do not** get copied as values then get copied as references

Each object created inherits a large amount of library methods.  The official API documentation: <https://ruby-doc.org/stdlib-2.5.3/>.

## TL;DR

### Sites

[Pragmatic Ruby - classes, variables and methods](http://ruby-doc.com/docs/ProgrammingRuby/html/tut_classes.html)
[Ruby Monk - objects chapter](https://rubymonk.com/learning/books/1-ruby-primer/chapters/6-objects)

### Videos

[Ruby Fundamentals - variables, nil, methods and scope](https://app.pluralsight.com/player?course=ruby-fundamentals&author=alex-korban&name=ruby-fundamentals-module1&clip=5&mode=live)

## Challenge 🎠

Use Rspec to run the challenges

```bash
bin/rspec spec/challenges/objects-variables_spec.rb --format doc
```

fix [../lib/challenges/objects-variables.rb](../lib/challenges/object-variables.rb) so the tests pass ✔️

## Go to next challenge

[Classes](./classes.md)