require_relative 'student'
require_relative 'report_card'

# student is Student
student = Student.new
student.set_name("Bob")
student.set_grade(90)
puts "Student Name: #{student.name}"
puts "Student Grade: #{student.grade}"
report = ReportCard.new
report.set_student(student)

puts report.print