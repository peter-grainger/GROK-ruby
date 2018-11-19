# Methods

## Default parameters

All arguments that **don't** have a default value are mandatory. In the following case `dogs` are mandatory.  No arguments passed causes a compile time error.

```ruby
def create_shelter(cats = 1, mice = 1, dogs)
    puts "#{cats} cats, #{mice} mice and #{dogs} dogs"
end
```

Give 4 as the argument and that sets the optional parameter dogs as 4

```ruby
create_shelter(4) # => 1 cats, 1 mice and 4 dogs
```

Give 2, 5, 7 as the argument and that overrides the default parameters

```ruby
create_shelter(2, 5, 7) # => 2 cats, 5 mice and 7 dogs
```

Mandatory parameters go **at the start or the end** of the argument list.

```ruby
def create_big_shelter(lion, elephant = 3, tigers = 9, giraffe)
    ...
end
```

Once the mandatory arguments assign the rest of the arguments assign from left to write.

```ruby
create_big_shelter(9, 4, 2) # => 9 lions, 4 elephants, 9 tigers and 4 giraffes
```

### Default parameter example

```bash
$ ruby examples/default-parameters.rb
1 cats, 1 mice and 4 dogs # args 4
2 cats, 5 mice and 7 dogs # args 2, 5, 7
2 cats, 1 mice and 5 dogs # args 2, 5
9 lions, 3 elephants, 9 tigers and 4 giraffes # args 9, 4
9 lions, 4 elephants, 9 tigers and 2 giraffes # args 9, 4, 2
```

## Variable Length Argument Parameter

A method can have 1 or more optional arguments using the splat operator `*`.  This argument needs to go **at the end** of the parameter list.

```ruby
def create_bookshop(*books)
    books.join(', ')
end
```

This will accept either an array preceded by the splat operator `*` or strings

```ruby
create_bookshop(*['War of Worlds', 'The Hobbit'])
create_bookshop('War of Worlds', 'The Hobbit')
```

If one of the arguments is mandatory it has to be before the variable argument

```ruby
def create_bookshop(quantity = 0, *books)
    puts "#{quantity} books: #{books.join(', ')}"
end
```

### Variable arguments example

```bash
$ ruby examples/variable-arguments.rb
2 books: War of Worlds, The Hobbit
2 books: War of Worlds, The Hobbit
```

## Keyword Arguments

An argument can have a keyword assigned to it, the order of the arguments don't matter.  Any arguments without keywords should go at the start or the end of the argument list.

```ruby
def add_book(genre, author: 'unknown', title: 'unknown')
    puts "#{genre.to_s.capitalize} book by #{author}: #{title}"
end
```

To make this also accept variable amount of arguments use the double splat operator `**`

```ruby
def add_complex_book(genre, author: 'unknown', title: 'unknown', **extras)
    puts "#{genre.to_s.capitalize} book by #{author}: #{title} Extras: #{extras.map {|key, value| "#{key}: #{value}"}.join(' ')}"
end
```

### Keyword arguments example

```bash
$ ruby examples/keyword-arguments.rb
Crime book by No Jësbo: The boy who played with a lighter
Crime book by No Jësbo: The boy who played with a lighter
Psychological book by Haula Pawkins: Man on a bus Extras: restricted: 18
```

## Method aliasing

Create a reference to a method with a different name

```ruby
class String
    alias_method "id", "object_id"
end

example = "some string"
puts example.object_id
puts example.id
```

### Method alias example

```bash
$ ruby examples/keyword-arguments.rb
70309453787940
70309453787940
```

### Books

[Pragmatic Ruby - methods](http://ruby-doc.com/docs/ProgrammingRuby/html/tut_methods.html)

### Exercises

[Ruby Monk - methods chapter](https://rubymonk.com/learning/books/1-ruby-primer/chapters/19-ruby-methods/lessons/69-new-lesson)

### Videos

[Ruby Fundamentals - default arguments](https://app.pluralsight.com/player?course=ruby-fundamentals&author=alex-korban&name=ruby-fundamentals-module5&clip=1&mode=live)

[Ruby Fundamentals - variable arguments](https://app.pluralsight.com/player?course=ruby-fundamentals&author=alex-korban&name=ruby-fundamentals-module5&clip=2&mode=live)

[Ruby Fundamentals - keyword arguments](https://app.pluralsight.com/player?course=ruby-fundamentals&author=alex-korban&name=ruby-fundamentals-module5&clip=3&mode=live)

## Challenge 🎠

Use Rspec to run the challenges

```bash
bin/rspec spec/challenges/methods_spec.rb --format doc
```

fix [../lib/challenges/methods.rb](../lib/challenges/methods.rb) so the tests pass ✔

## Go to next section

[Blocks](./blocks)