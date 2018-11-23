
long_hand = [1, 2, 3].map do |value|
    value * 2
end

short_hand = [1, 2, 3].map { |value|
    value * 2
}

shorter_hand = [1, 2, 3].map { |value| value * 2 }

puts long_hand == shorter_hand
puts short_hand == shorter_hand
