require 'date'

def get_age()
  puts("Enter your age in years: ")
  age = gets
  return age.to_i()
end

def get_string(name)
  puts("Enter your name: ")
  s = gets.to_s
  return s
end

def print_year_born(name,age)
  year_born = Date.today.year - age.to_i()
  puts(name.gsub(/\s+/, "") + " you were born in: " + year_born.to_s())
end

def main()
  age = get_age()
  name = get_string(name)
  print_year_born(name,age)
end

main()