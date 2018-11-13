# Classes Objects and Variables

## Key Concepts

- Ruby is a true object orientated language, everything in Ruby is an object, there are no primitives, all numbers / characters / booleans inherit from Object and have and object ID

- Ruby is loosely typed you can not declare a variables type

## Variables

You can not set the scope or the type.  i.e. `const` or `String`

```ruby
foo = "bar" # => "bar"
```

### Variable Example

```bash
$ ruby examples/variables.rb
"bar"
```

## Objects

A number, boolean and string are all objects in Ruby

```ruby
"bar".class # => String
3.class # => Integer
false.class # => Integer
```

Each object created inherits a large amount of library functions.  The official API documentation: <https://ruby-doc.org/stdlib-2.5.3/>

### Objects Example

```bash
$ ruby examples/objects.rb
String
Integer
FalseClass
```

