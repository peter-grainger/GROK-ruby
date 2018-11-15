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