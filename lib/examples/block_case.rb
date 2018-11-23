def block_case(number, &block)
    case number
    # calls the block with the value passed into the case
    # same as calling block.call(number)
    when block then "block equals"
    end
end