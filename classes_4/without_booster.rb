require_relative 'student'
require_relative 'report_card'

student = Student.new
student.set_name("Bob")
student.set_grade(90)

report = ReportCard.new
report.set_student(student)

puts report.print