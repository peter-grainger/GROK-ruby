def zoo(merkat, monkey, lion = 4, tiger)
    {
        merkat: merkat,
        monkey: monkey,
        lion: lion,
        tiger: tiger
    }
end

def add_animals(type, *animals)
    {
        type: type,
        animals: animals
    }
end

def add_animal(animal, type: 'unknown', name: 'unknown', **extra_attribtes)
    base_attributes = {
        animal: animal,
        type: type,
        name: name,
    }
    base_attributes.merge(extra_attribtes)
end