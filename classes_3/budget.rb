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