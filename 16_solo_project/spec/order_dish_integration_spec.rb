require 'order'
require 'dish'

RSpec.describe "menu and dish integration" do

  it "adds dishes to the order" do
    order = Order.new
    dish_1 = Dish.new("Soup", 5.99)
    dish_2 = Dish.new("Pizza", 9.99)
    order.add(dish_1)
    order.add(dish_2)
    expect(order.check_dishes).to eq ["Soup: £5.99", "Pizza: £9.99"]
  end

  it "adds dishes to the order and checks current price" do
    order = Order.new
    dish_1 = Dish.new("Soup", 5.99)
    dish_2 = Dish.new("Pizza", 9.99)
    order.add(dish_1)
    order.add(dish_2)
    expect(order.check_price).to eq "£15.98"
  end

  it "removes dishes from the order" do
    order = Order.new
    dish_1 = Dish.new("Soup", 5.99)
    dish_2 = Dish.new("Pizza", 9.99)
    dish_3 = Dish.new("Cake", 4.99)
    dish_4 = Dish.new("Drink", 4.50)
    order.add(dish_1)
    order.add(dish_2)
    order.add(dish_3)
    order.add(dish_4)
    order.remove(dish_1)
    order.remove(dish_3)
    order.remove(dish_4)
    expect(order.check_dishes).to eq ["Pizza: £9.99"]
  end

  it "adds dishes to my order and prints the receipt" do
    order = Order.new
    dish_1 = Dish.new("Soup", 5.99)
    dish_2 = Dish.new("Pizza", 9.99)
    dish_3 = Dish.new("Cake", 4.99)
    order.add(dish_1)
    order.add(dish_3)
    expect(order.print_receipt).to eq "Soup: £5.99, Cake: £4.99, Total: £15.98"
  end

end