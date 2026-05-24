class Stock
    class MinusSharesError < StandardError
    end

  def initialize(name,price)
    @name = name
    @price = price
  end
  def name
    @name
  end
  def price
    @price
  end
  def ticker
    "#{@name}: $#{@price}"
  end
  def calculate(total_shares)
    if total_shares < 1
      raise MinusSharesError, 'Stockshars must be more 1'
    end
    @price * total_shares
  end
end

voo_stock = Stock.new("VOO", 37.5)
nvidia_stock = Stock.new("NVD", 3504.12)

stocks = [voo_stock, nvidia_stock]

stocks.each do |stock|
  puts stock.ticker # VOO: $37.5
  puts stock.name # VOO
  puts stock.price # 37.5
  total_shares = 0
  puts "#{total_shares} shares of #{stock.name} is #{stock.calculate(total_shares)}"
end