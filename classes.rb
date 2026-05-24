class Age
  def to_months(age)
    months_number = 12 * age
    months_number.round(2)
  end
end

class Money
  CENTS_IN_DOLLAR = 100.0
  def cent_to_dollars(c)
    dollars = c / CENTS_IN_DOLLAR
    rounded_dollars_number = dollars.round(3)
  end
  def price_of_gas(liter,price_in_cent)
    price = liter * cent_to_dollars(price_in_cent)
  end
  def exchange_krw_to_cad(krw)
    won_to_cad = krw * 0.001
  end
  def split_bill(ppl,much)
    much / ppl
  end
  def krw_to_other(krw,other)
    if other == "cad"
    krw * 0.001
    elsif other == "mxn"
    krw * 0.013
    elsif other == "usd"
    krw * 0.0007
    else
    raise "wrong currency"
    end
  end
end

money_calculator = Money.new
puts "85.9 cents is $#{money_calculator.cent_to_dollars(85.9)}"
puts money_calculator.krw_to_other(30_000, "mxn")

AGE=12

puts AGE
puts Money::CENTS_IN_DOLLAR