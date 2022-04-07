require './student' # put your record definition in student.rb

def main()
    # put your code here
    student = Student.new()
    student.id = "X233900"
    student.first_name = "John"
    student.last_name = "Lennox"
    student.course = "BICT"
    student.phone_number = "1300 CALL ME"
    puts(student.id)
    puts(student.first_name)
    puts(student.last_name)
    puts(student.course)
    puts(student.phone_number)
end

main()