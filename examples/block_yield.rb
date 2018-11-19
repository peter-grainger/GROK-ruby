def execute_block(number)
    yield number
end

def execute_block_argument(number, &block)
    block.call number
end

puts execute_block(1) { |number| number + 1 }
puts execute_block_argument(1) { |number| number + 2 }