class ReportCard
  def set_student(student)
    @student = student
  end
  def set_booster(booster)
    @booster = booster
  end
  def print
    student_name = @student.name
    student_grade = @student.grade
    if @booster
      booster = @booster.bonus
      final_grade = @booster.bonus + @student.grade
      reason = @booster.reason
      "📄 Report Card
      Student: #{student_name}
      Original Grade: #{student_grade}
      Bonus: #{booster}
      Reason: #{reason}
      Final Grade: #{final_grade}"
    else
      "📄 Report Card
      Student: #{student_name}
      Original Grade: #{student_grade}"
    end
  end
end