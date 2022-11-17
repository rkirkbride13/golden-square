class Receipt
  def initialize(order)
    @order = order
  end

  def total
    @order.completed? ? @total = @order.check_price : "Order not yet submitted"
  end

  def print
    if @order.completed?
      order = @order.check_dishes.join(", ")
      return "#{order}, Total: #{total}"
    else
      return "Order not yet submitted"
    end
  end

end