class Money
  def initialize(input_currency)
    @currency = input_currency
  end
  
  def krw_to_other(krw)
    if @currency == "cad"
    krw * 0.001
    elsif @currency == "mxn"
    krw * 0.013
    elsif @currency == "usd"
    krw * 0.0007
    else
    raise "wrong currency"
    end
  end

  def current_currency
    @currency
  end
end

# calculator = Money.new("mxn")
# puts calculator.current_currency
# puts calculator.krw_to_other(20000)

class BankAccount
  class InvalidAmountError < StandardError
  end

  def initialize(money)
    @money = money
  end
  def deposit(amount)
    if amount < 1
      raise InvalidAmountError, "amount must be more than 0"
    end
    @money = @money + amount
  end
  def withdraw(amount)
    if amount < 10
      raise InvalidAmountError, "we can't withdraw money under 10 dollors."
    end
    @money = @money - amount
  end
  def balance
    @money
  end
end
account = BankAccount.new(100)
account.deposit(100)
account.withdraw(40)
puts account.balance()

# class StepCounter
#   def initialize(number)
#     @number = number
#   end
#   def add_steps(counter)
#     @number = @number + counter
#   end
#   def total
#     @number
#   end
# end

# counter = StepCounter.new(200)
# counter.add_steps(500)
# counter.add_steps(300)
# puts counter.total()