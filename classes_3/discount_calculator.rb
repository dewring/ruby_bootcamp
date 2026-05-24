
class DiscountCalculator
  def set_percent(percent)
      @percent = percent / 100.0
  end
  def calculate(price)
    price - (price * @percent)
  end
  def discount
    @percent
  end
end