
def read_array(count)
    a = []
    index = 0
    while (index < count)
        print("Enter text: ")
        a << gets.chomp
        index += 1
    end
    return a
end

def print_array(a)
    puts("Printing lines:")
    index = 0
    while (index < a.size)
        puts "#{index} #{a[index]}"
        index += 1
    end
end

def main()
    print ("How many lines are you entering? ")
    count = gets.chomp.to_i()
    a = read_array(count)
    print_array(a)
end 

main()