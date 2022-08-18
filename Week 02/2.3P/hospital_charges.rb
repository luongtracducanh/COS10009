require './input_functions'

def read_patient_name()
	name = read_string('Enter patient name: ')
	return name
	# write this function - use the function read_string(s)
	# from input_functions.rb to read in the name
	# make sure you 'return' the name you read to the calling module
end

def calculate_accommodation_charges()
	charge = read_float("Enter the accommodation charges: ")
	return charge
end

def calculate_theatre_charges()
	charge = read_float("Enter the theatre charges: ")
	return charge
end

def calculate_pathology_charges()
	charge = read_float("Enter the pathology charges")
	# complete this function based on the above examples
end

def print_patient_bill(name, total)
	puts('The patient name is: ' + name)
	puts('The total ammount due is: $')
	print(total.round(total).to_s.chomp('.0'))
end

def create_patient_bill()
	total = 0 # it is important to initial variables before use!
	patient_name = read_patient_name()
	total += calculate_accommodation_charges()
	total += calculate_theatre_charges()
	total += calculate_pathology_charges()
	print_patient_bill(patient_name, total)
end

def main()
	create_patient_bill()
end

main()
