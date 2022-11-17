class Order
  def initialize(menu)
    @order = {}
    @menu = menu
    @complete = false
  end

  def add(dish)
    dish_exists = @menu.list.include?("#{dish.name}: £#{dish.price}")
    fail "This dish doesn't exist on the menu" unless dish_exists
    @order[dish.name] = dish.price
  end

  def remove(dish)
    @order.delete(dish.name)
  end

  def check_dishes
    return "Nothing on order" if @order.empty?
    order = @order.map do |name, price|
      "#{name}: £#{price}"
    end
    return order
  end

  def check_price
    return "Nothing on order" if @order.empty?
    total = 0
    order = @order.map do |name, price|
      total += price
    end
    return "£#{total}"
  end

  def submit
    @complete = true
  end

  def completed?
    return @complete
  end
end