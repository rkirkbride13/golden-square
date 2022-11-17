require 'menu'
require 'dish'

RSpec.describe "menu and dish integration" do

  it "adds dishes to the menu and prints menu" do
    menu = Menu.new
    dish_1 = Dish.new("Soup", 5.99)
    dish_2 = Dish.new("Pizza", 9.99)
    dish_3 = Dish.new("Cake", 4.99)
    menu.add(dish_1)
    menu.add(dish_2)
    menu.add(dish_3)
    expect(menu.list).to eq ["Soup: £5.99", "Pizza: £9.99", "Cake: £4.99"]
  end

end