class Receipt
  def initialize(order)
    @order = order
  end

  def total
    @total = @order.check_price
  end

  def print
    order = @order.check_dishes.join(", ")
    return "#{order}, Total: #{total}"
  end

end