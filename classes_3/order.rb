class Order
  def set_product(product)
    @product = product
  end
  def set_quantity(quantity)
    @quantity = quantity
  end
  def set_discount(discount)
    @discount = discount
  end
  def receipt
    product_name = @product.name
    price = @product.price
    if @discount
      discount = @discount.discount * 100
      final_price_per_item = @discount.calculate(price)
      total = final_price_per_item * @quantity

      "🛒 Order Receipt
      Product: #{product_name}
      Price: $ #{price}
      Discount: #{discount}%
      Final Price per Item: $ #{final_price_per_item}
      Quantity: #{@quantity}
      Total: $#{total}"
    else
       total = price * @quantity

      "     🛒 Order Receipt
      Product: #{product_name}
      Price: $ #{price}
      Quantity: #{@quantity}
      Total: $#{total}"
    end
  end

  def hard_receipt
    product_name = @product.name
    price = @product.price
    discount = @discount.discount * 100 if @discount
    final_price_per_item = price
    if @discount
      final_price_per_item = @discount.calculate(price)
    end
    total = final_price_per_item * @quantity

    final_receipt = "      🛒 Order Receipt
    Product: #{product_name}
    Price: $ #{price}"

    if @discount
      final_receipt = final_receipt + "\n      Discount: #{discount}%
    Final Price per Item: $ #{final_price_per_item}"
    end

    final_receipt + "\n      Quantity: #{@quantity}
    Total: $#{total}"
  end
end

