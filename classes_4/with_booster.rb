require_relative 'student'
require_relative 'grade_booster'
require_relative 'report_card'

student = Student.new
student.set_name("Alice")
student.set_grade(78)

booster = GradeBooster.new
booster.set_bonus(5)
booster.set_reason("Excellent participation")

report = ReportCard.new
report.set_student(student)
report.set_booster(booster)

puts report.print