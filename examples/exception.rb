def read_file(file)
    puts "checking file "+ file
    42 / 0 if file == "zero"
    raise SystemCallError, "File not found" if file == "system"
    name if file == "standard"
    puts "no error with file " + file
    
end

def close_file(file)
    puts "close " + file
end

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

read_file_to_memory('zero')
read_file_to_memory('system')
read_file_to_memory('valid')
read_file_to_memory('standard')




