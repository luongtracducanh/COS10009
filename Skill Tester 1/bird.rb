require './input_functions'

# Complete the code below
# Use input_functions to read the data from the user

class Bird
    attr_accessor :id, :location, :species, :cage_number
    def initialize(id, location, species, cage_number)
        @id = id
        @location = location
        @species = species
        @cage_number = cage_number
    end
end

def read_bird()
    id = read_integer("Enter bird id: ")
    location = read_string("Enter bird location: ")
    species = read_string("Enter bird species: ")
    cage_number = read_integer("Enter bird cage number: ")
    return Bird.new(id, location, species, cage_number)
end

def read_birds()
    numberofbirds = read_integer("How many birds are you entering: ")
    bird_total = Array.new()
    for i in 1..numberofbirds
        bird_total << read_bird()
    end
    return bird_total
end

def print_bird(bird)
    puts("Id #{bird.id}")
    puts("Location #{bird.location}")
    puts("species #{bird.species}")
    puts("Cage Number #{bird.cage_number}")
end

def print_birds(birds)
    birds.each do |bird|
        print_bird(bird)
    end
end
    
def main()
    birds = read_birds()
    print_birds(birds)
end

main()
