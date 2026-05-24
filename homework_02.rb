#TipCalculator
class TipCalculator
  def set_bill(bill)
    @bill = bill
  end

  def set_percent(percent)
    @percent = percent / 100.0
  end

  def tip_amount
    @bill * @percent
  end

  def total_amount
    @bill + tip_amount
  end
end

tip = TipCalculator.new
tip.set_bill(80)
tip.set_percent(15)
puts tip.tip_amount    # => 12.0
puts tip.total_amount  # => 92.0

#PageCounter
class PageCounter
  def start_at(start)
    @start = start
  end
  def read_to(read)
    @read = read
  end
  def pages_read
    @read - @start
  end
end
book = PageCounter.new
book.start_at(10)
book.read_to(35)
puts book.pages_read   # => 25

#PasswordChecker
class PasswordChecker
  def set_password(password)
    @password = password
  end
  def check(current)
    @password == current
  end
end
auth = PasswordChecker.new
auth.set_password("secret123") # sets new password to secret123
puts auth.check("guess")        # => false
puts auth.check("secret123")    # => true

#Budget
class Budget
  def set_limit(monthly)
    @monthly = monthly
  end
  def spend(spend)
    @spend = spend
  end
  def remaining
    @monthly - @spend
  end
end
budget = Budget.new
budget.set_limit(1000)
budget.spend(400)
puts budget.remaining      # => 600

puts "LightSwitch"
#LightSwitch
class LightSwitch
  def initialize
    @switch = false
  end
  def flip
    @switch = !@switch
  end
  def status
    if @switch == false
      "off"
    else
      "on"
    end
  end
end
light = LightSwitch.new
light.flip
puts light.status          # => "on"
light.flip
puts light.status          # => "off"
puts "#LightSwitch"

#TemperatureMonitor
class TemperatureMonitor
  def set(new_temperature)
    @temperature = new_temperature
  end
  def current
    @temperature
  end
  def to_fahrenheit
    @temperature * 9/5 + 32
  end
  def increase(increase)
    add_temperature = current + increase
    set add_temperature
    # @temperature = @temperature + increase
    # set(@temperature + increase)
  end
end

temp = TemperatureMonitor.new
temp.set(25.3)
puts temp.current          # => 25
puts temp.to_fahrenheit    # => 77.0
temp.increase(5)
puts(temp.to_fahrenheit)    # => 86.0

#DiscountCalculator
class DiscountCalculator
  def set_price(new_price)
    @new_price = new_price
  end
  def set_discount_percent(percent)
    @percent = percent
  end
  def final_price
    discount =  @new_price * (@percent / 100.0)
    @new_price - discount
  end
end

discount = DiscountCalculator.new
discount.set_price(200)
discount.set_discount_percent(20)
puts discount.final_price  # => 160

#ProductLabeler
class ProductLabeler
  def set_name(name)
    @name = name
  end
  def set_price(label)
    @label = label
  end
  def output
    @name + " - $ #{@label}"
  end
end

label = ProductLabeler.new
label.set_name("Sticker Pack")
label.set_price(5.5)
puts label.output           # => "Sticker Pack - $5.50"