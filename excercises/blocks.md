# Blocks (and lambdas)

Blocks and lamdbas are discrete pieces of code that aren't attached to an object or method.

## Yield

To run a block use the keyword `yield`.  This runs the block defined within the curly braces `{}`.

```ruby
def execute_block(number)
    yield number
end

puts execute_block(1) { |number| number + 1 } # => outputs 2
```

Assign a block to a variable by using the `&` operator.  This converts it to a `Proc` object which has the `send` method to execute the block.

```ruby
def execute_block_argument(number, &block)
    block.call number
end

puts execute_block_argument(1) { |number| number + 1 } # => outputs 2
```

No block causes an Error on invocation of yield

### Default parameter example

```bash
$ ruby examples/block_yield.rb
2
3
```

## Block local variables.

Rubyism:

- Block arguments shadow variables in outer scope
- Variables defined in the block don't shadow, they overwrite!

In this example the block executed in the middle of the method increment_by_one defines the variable `current_number` this overwrites the variable defined in the scope also called `current number` which is probably not as intended.

```ruby
def execute_block(number)
    yield number
end

def increment_by_one(number)
    current_number = 7
    new_number = execute_block(number) { |number|
        current_number = number + 1
        current_number
    }
    "current number: #{current_number} new number: #{new_number} original number #{number}"
    # current number: 2!               new number: 2             original number 1
end
```

To fix this use a block local variable.  Define using `;` then the name of the variable.

```ruby
new_number = execute_block(number) { |number; current_number| 
    # ...
}
```

### increment example

```bash
$ ruby examples/block-local-variables.rb
current number: 2 new number: 2 original number 1
current number: 7 new number: 2 original number 1
```