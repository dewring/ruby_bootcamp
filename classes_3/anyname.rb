require_relative "tip_calculator"
require_relative "budget"
require_relative "discount_calculator"
# require_relative "./second_folder/something"
# require_relative "../example"

puts "TipCalculator"
tip = TipCalculator.new
tip.set_bill(80)
tip.set_percent(15)
puts tip.tip_amount    # => 12.0
puts tip.total_amount  # => 92.0


puts "Budget"
budget = Budget.new
budget.set_limit(1000)
budget.spend(400)
puts budget.remaining      # => 600


puts "DiscountCalculator"
@discount = DiscountCalculator.new
@discount.set_price(200)
@discount.set_discount_percent(20)
puts @discount.final_price  # => 160

