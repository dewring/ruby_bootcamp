require_relative 'product'
require_relative 'order'

product = Product.new
product.set_name("Eraser Set")
product.set_price(5.0)

order = Order.new
order.set_product(product)
order.set_quantity(3)

# puts order.receipt
puts order.hard_receipt