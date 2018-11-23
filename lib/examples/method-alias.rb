class String
    alias_method "id", "object_id"
end

example = "some string"
puts example.object_id
puts example.id