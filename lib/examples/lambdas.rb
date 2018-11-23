
def lambda_method
    output = 0
    # Assigns the value 2 to variable output
    lambda { output = 1 + 1; return}.call
    # Returns the value 2
    output

end

def proc_method
    output = 0
    # proc returns out of method
    proc { output = 1 + 1; return}.call
    # does not run method returns nil
    output

end