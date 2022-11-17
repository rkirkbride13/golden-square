class Menu
  def initialize
    @menu = {}
  end

  def add(dish)
    @menu[dish.dish] = dish.price
  end

  def list
    menu = @menu.map do |dish, price|
      "#{dish}: £#{price}"
    end
    return menu
  end
end