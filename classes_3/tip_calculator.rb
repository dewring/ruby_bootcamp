require_relative "discount_calculator"

class TipCalculator
  def initialize
    @discount_calculator = DiscountCalculator.new
  end

  def set_bill(bill)
    @bill = bill
    @discount_calculator.set_price(@bill)
  end

  def set_percent(percent)
    @discount_calculator.set_discount_percent(percent)
  end

  def tip_amount
    @discount_calculator.discount
  end

  def total_amount
    @bill + tip_amount
  end
end
