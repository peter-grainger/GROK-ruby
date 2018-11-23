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
end

def increment_by_one_fixed(number)
    current_number = 7
    new_number = execute_block(number) { |number; current_number|
        current_number = number + 1
        current_number
    }
    "current number: #{current_number} new number: #{new_number} original number #{number}"
end

puts increment_by_one(1)

puts increment_by_one_fixed(1)