require 'date'
require './input_functions'

# Multiply metres by the following to get inches:
INCHES = 39.3701

def hello()
	puts('What is your name?')
	name = gets()
	puts('Your name is ' + name.gsub(/\s+/, "") + '!')
	puts('What is your family name?')
	family_name = gets()
	puts('Your family name is: '+ family_name.gsub(/\s+/, "") + '!')
	puts('What year were you born?')
	year_born = gets().to_i
	# Calculate the users age
	age = 2021 - year_born
	puts('So you are ' + age.to_s + ' years old')
	puts('Enter your height in metres (i.e as a float):')
	value = gets().to_f 
	value = value * INCHES
	puts('Your height in inches is:')
	puts(value.to_s())
	puts('Finished')
  continue = read_boolean('Do you want to continue?')
if (continue)
	puts('Ok, lets continue')
else
  puts('ok, goodbye')
end
end

def main()
	hello()
end

main()