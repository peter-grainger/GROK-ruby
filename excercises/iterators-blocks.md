# Iterators and Blocks

Ruby like many other languages makes use of Higer Order Functions.  To use them the first argument is a `block`.  A block can be between `do` and `end` keywords 

```ruby
do
    puts "Hello"
end
```

or can be between braces `{` and `}`

```ruby
{ puts "Hello" }
```

The Array Object has lots of methods that accept a block as an argument.

```ruby
[1, 2, 3].map do |value|
    value * 2
end # => [2, 4, 6]
```

or with braces

```ruby

[1, 2, 3].map { |value|
    value * 2
} # =>  [2, 4, 6]
```

and even shorter hand if it can fit.

```ruby
[1, 2, 3].map { |value| value * 2 } # => [2, 4, 6]
```

## TL;DR

### Book

[Pragmatic Ruby - containers, iterators and blocks](http://ruby-doc.com/docs/ProgrammingRuby/html/tut_containers.html)

### Exercises

[Ruby Monk - control structures](https://rubymonk.com/learning/books/1-ruby-primer/chapters/34-lambdas-and-blocks-in-ruby/lessons/78-blocks-in-ruby)

### Videos

[Ruby Fundamentals - Iterators and blocks](https://app.pluralsight.com/player?course=ruby-fundamentals&author=alex-korban&name=ruby-fundamentals-module3&clip=5&mode=live)


## Challenge 🎠

Use Rspec to run the challenges

```bash
bin/rspec spec/challenges/iterators-blocks_spec.rb --format doc
```

fix [../lib/challenges/iterators-blocks.rb](../lib/challenges/iterators-blocks.rb) so the tests pass ✔️

## Go to next section

[Exceptions](./exceptions)