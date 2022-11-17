class Order
  def initialize
    @order = {}
  end

  def add(dish)
    @order[dish.dish] = dish.price
  end

  def remove(dish)
    @order.delete(dish.dish)
  end

  def check_dishes
    order = @order.map do |dish, price|
      "#{dish}: £#{price}"
    end
    return order
  end

  def check_price
    total = 0
    order = @order.map do |dish, price|
      total += price
    end
    return "£#{total}"
  end

  def print_receipt
    check_dishes
  end
end