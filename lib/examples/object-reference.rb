def same_object(a)
    b = a # reference the same object
    b # just a reference to a
end

def clone_object(a)
    b = a.clone # make a copy of the object
    b # This is not a
end