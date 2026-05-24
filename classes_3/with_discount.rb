require_relative 'product'
require_relative 'discount_calculator'
require_relative 'order'

product = Product.new
product.set_name("Drawing Tablet")
product.set_price(100.0)

discount = DiscountCalculator.new
discount.set_percent(20)

order = Order.new
order.set_product(product)
order.set_quantity(2)
order.set_discount(discount)

# puts order.receipt
puts order.hard_receipt