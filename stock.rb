

voo_stock = Stock.new("VOO", 37.5)
nvidia_stock = Stock.new("NVD", 3504.12)

stocks = [voo_stock, nvidia_stock]

stocks.each do |stock|
  puts stock.ticker # VOO: $37.5
  puts stock.name # VOO
  puts stock.price # 37.5
  total_shares = 5
  puts "#{total_shares} shares of #{stock.name} is #{stock.calculate(total_shares)}"
end