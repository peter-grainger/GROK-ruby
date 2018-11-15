# Flow Control

## Conditional Initialization

Initialize if there is not already a value

```ruby
foo ||= "default" # => "default"
foo = "bar"
foo ||= "default" # => "bar"
```

## Use and for nil safety

If the execution of a method relies on a condition then a useful shorthand is to.

```ruby
foo = 2 > 1 && "wizz" # => wizz
bar = foo.is_a?(String) && foo.upcase # => WIZZ
```

## Attach conditional to end of statement

```ruby
foo = "bar"
"yey" if foo == "bar" # => "yey"
```

## Using **and** and **or**

```ruby
def legallyDrink?(age)
    age >=18
end

def inUK?(country)
    country == 'England' or
    country == 'Wales' or
    country == 'Scotland'
end

def drink
    puts "woo"
end

legallyDrink?(19) and inUK?("England") and drink # => woo!

```

## Flow Example

```bash
$ ruby examples/flow-control.rb
initial
wizz
foo is actually wizz!
WIZZ
woo
```

## Case Statement

Pretty much like most other languages

Rubyism:

- The case statement can be empty... `case <blank>`
- No break in the when block
- `else` is the default block

```ruby
def how_to_get_home(distance)
    case distance
    when "far away"
        "give up"
    when "close"
        "run"
    else
        "walk"
    end
end
```

### Case Example

```bash
$ ruby examples/case.rb
give up
```

## Loops

### While

The following will output `I'm bored` once

```ruby
i = 0;
devices = ['tv', 'kettle', 'fridge']
allConnected = false
while !allConnected
    connect(devices[i])
    sleep 1
    redo unless isConnected(devices[i])
    i += 1
    next unless i == 3
    break
end
```

### While Example

```bash
$ ruby examples/while.rb
connecting tv
connecting kettle
connecting fridge
```

### For

outputs the values from 1 to 10

```ruby
for i in (1..10)
    puts i
end
```

## TL;DR

### Book

[Pragmatic Ruby - expressions](http://ruby-doc.com/docs/ProgrammingRuby/html/tut_expressions.html)

### Exercises

[Ruby Monk - control structures](https://rubymonk.com/learning/books/1-ruby-primer/chapters/8-control-structures/)

### Videos

[Ruby Fundamentals - flow control](https://app.pluralsight.com/player?course=ruby-fundamentals&author=alex-korban&name=ruby-fundamentals-module3&clip=3&mode=live)

[Ruby Fundamentals - case statement](https://app.pluralsight.com/player?course=ruby-fundamentals&author=alex-korban&name=ruby-fundamentals-module3&clip=3&mode=live)

[Ruby Fundamentals - case statement](https://app.pluralsight.com/player?course=ruby-fundamentals&author=alex-korban&name=ruby-fundamentals-module3&clip=3&mode=live)

[Ruby Fundamentals - looping constructs](https://app.pluralsight.com/player?course=ruby-fundamentals&author=alex-korban&name=ruby-fundamentals-module3&clip=4&mode=live)

## Challenge 🎠

Use Rspec to run the challenges

```bash
bin/rspec spec/challenges/flow-control_spec.rb --format doc
```

fix [../lib/challenges/flow-control.rb](../lib/challenges/flow-control.rb) so the tests pass ✔️

## Go to next challenge

[Classes](./iterators-blocks.md)