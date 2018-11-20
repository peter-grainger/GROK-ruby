# Don't change!
def execute_block(number)
    yield number
end
# Don't change above


def calculate(number)
    yield number
end

def calculate_block(number, &block)
    block.call number
end

def add_to_counter(number)
    count = 5
    second_count = 
        execute_block(number) { |number; count| # Change this line
            count = 20 # leave this!
            count + number * 2 # leave this!
        } 

    "Old count: #{count}, new count: #{count + number}, second count #{second_count}"
end