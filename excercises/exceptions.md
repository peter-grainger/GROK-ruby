# Exceptions

Used for exceptional cases, some examples could be race conditions, IO issues, communication issues, impossible actions.

Use on cases where the activity is out of the control of the program

## Rescue

Use the keyword `rescue` after the code that you have deemed needs the exception caught.  `SystemCallError` is the error raised by reading a file using the `IO` library.  We *could* rescue the `StandardError` class as this is a parent of the `SystemCallError` and the functionality would be the same however if we introduce a bug in the readFile function for instance divide by zero that would also get caught and hidden.

```ruby
def readFileToMemory(file)
    readFile(file)
    rescue SystemCallError => e
        puts "file issue: " + e.message
end
```

## more than one rescue statement

If the `read_file` function also runs a library function out of our control that potentially divides by zero we can rescue this as well by putting a second rescue statement afterwards `ZeroDivisionError`.  If the running of the function is vital and the result of read_file doesn't matter as much as the continued running then a catch all rescue block can be added.  This defaults to `StandardError`

```ruby
def read_file_to_memory(file)
    read_file(file)
    rescue SystemCallError => e
        puts "file issue: " + e.message
    rescue ZeroDivisionError => e
        puts "number issue: " + e.message
    rescue => e
        puts "standard error: " + e.message
end
```

## Else and Ensure

After the rescue blocks more actions come  the `else` keyword which runs **if no exceptions occurred** and the `ensure` keyword which **always** whether there was an exception or not.

```ruby
def read_file_to_memory(file)
    read_file(file)
    rescue SystemCallError => e
        puts "file issue: " + e.message
    rescue ZeroDivisionError => e
        puts "number issue: " + e.message
    rescue => e
        puts "standard error: " + e.message
    else 
        puts "carry on!"
    ensure
        close_file(file)
end
```

## Raise custom Errors

Up to now the Errors raised were part of the Ruby standard library.  To code defensively in cases where an unexpected action occurs use the keyword `raise`.

Use with the standard library Errors

```ruby
def read_file
  raise SystemCallError, "couldn't read the file"
end
```

or with your own, it's recommended to inherit from `StandardError` to take care of all the boilerplate methods needed for accurate display

```ruby
class AwesomeBestError < StandardError
end

def read_file
    raise AwesomeBestError, "I <3 errors"
end
```