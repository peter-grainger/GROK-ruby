def how_to_get_home(distance)
    case distance
    when "far away"
        "give up"
    when "close"
        "run"
    else
        "walk"
    end
end

puts how_to_get_home("far away")