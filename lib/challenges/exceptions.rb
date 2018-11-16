def execute_block(file, &block)
    yield block
# rescue on StandardError
# rescue on ZeroDivisionError
# return "File Contents" if no errors happened
# close the file whatever happens
end
