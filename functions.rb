leika_months_number = 12 * 4.7
rounded_leika_months_number = leika_months_number.round(3)
puts "Leiks is #{rounded_leika_months_number} months"

def age_in_months(age,name)
    months_number = 12 * age
    rounded_months_number = months_number.round(2)
    "#{name.capitalize} is #{rounded_months_number} months"
end

puts age_in_months(30,"ellie")
puts age_in_months(26,"litzi")

def greeting(name)
    # "Hello\t #{name.capitalize}"
    # "Hello\t" + name.capitalize
    "Hello" + "," + name.capitalize
end

puts greeting("ellie")

def f_to_c(f)
    celsius = (f - 32.0) * (5.0 / 9.0)
    celsius
end

def pretty_f_to_c(f)
    "#{f}F is #{f_to_c(f)}C"
end

puts pretty_f_to_c(77.0)
 
puts ""
puts "price of gas"
def cent_to_dollars(c)
    dollars = c / 100.0
    rounded_dollars_number = dollars.round(3)
end

puts "85.9 cents is $#{cent_to_dollars(85.9)}"

def price_of_gas(liter,price_in_cent)
    price = liter * cent_to_dollars(price_in_cent)
end

puts "20.0 liters of gas is $" + "#{price_of_gas(20.0,85.9)}"

#20250819 연습
def exchange_krw_to_cad(krw)
    won_to_cad = krw * 0.001
end

def pretty_krw_to_cad(krw)
    "#{exchange_krw_to_cad(krw)} 달러입니다"
end
puts pretty_krw_to_cad(100_000)

puts ""

def mile_to_kil(mile)
    m_to_k = mile * 1.6
    rounded_m_to_k = m_to_k.round(3)
end
def pretty_mile_to_kil(mile)
    "#{mile_to_kil(mile)}" + " is kilometer"
end
puts pretty_mile_to_kil(94)

def split_bill(ppl,much)
    much / ppl
end
def pretty_split_bill(ppl,much)
    "#{ppl}인분을 #{much}로 나누면 #{split_bill(ppl,much)} 입니다"
end
puts pretty_split_bill(6,220)

