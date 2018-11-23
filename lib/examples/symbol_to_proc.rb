def symbol_to_proc?
    [1.5,2.5].map { |number| number.ceil } == [1.5,2.5].map(&:ceil)
end