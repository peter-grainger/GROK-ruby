def connect(device)
    puts "connecting " + device
end

def isConnected(device)
    true
end

i = 0;
devices = ['tv', 'kettle', 'fridge']
allConnected = false
while !allConnected
    connect(devices[i])
    sleep 1
    redo unless isConnected(devices[i])
    i += 1
    next unless i == 3
    break
end