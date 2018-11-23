def execute_block(number)
    # run the block and pass the number through
    yield number
end

# & converts the block into a proc
def execute_block_argument(number, &block)
    # procs can be stored in variables
    block_store = block
    # uses the call method to run the proc
    block_store.call number
end