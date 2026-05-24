# CustomError = StandardError.new
# begin
#   a = 3
#   b = a/0
#   puts b
# rescue ZeroDivisionError
#   puts "oops there was an ZeroDivisionError error"
# rescue ArgumentError, CustomError
#   puts "this won't happen"
# ensure
#   puts "this will always show!!!"
# end


class Calculator
  def division(first_value, second_value)
    return first_value / second_value
  rescue ZeroDivisionError
    puts "You can't divide by 0"
  ensure
    puts "Calculator#division of #{first_value} by #{second_value}" 
  end
end

calculator = Calculator.new
a = 3

puts calculator.division(a, 2)

b = calculator.division(a, 0)

puts b
