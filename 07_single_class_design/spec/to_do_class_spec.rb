require 'to_do_class'

RSpec.describe ToDoList do

  it "adds task to list when calling add_task method and print list when calling print_list" do
    my_list = ToDoList.new
    my_list.add_task("Walk the dog")
    expect(my_list.print_list).to eq "My to do list: Walk the dog"
  end

  it "fails if no task is on list and the list is printed" do
    my_list = ToDoList.new
    expect{my_list.print_list}.to raise_error "No tasks on the list"
  end

  it "removes a task if the task has been added and marked complete, the prints remaining tasks" do
    my_list = ToDoList.new
    my_list.add_task("Walk the dog")
    my_list.add_task("Go to the shops")
    my_list.mark_complete("Walk the dog")
    expect(my_list.print_list).to eq "My to do list: Go to the shops"
  end

  it "fails if a non-existent task is marked complete" do
    my_list = ToDoList.new
    my_list.add_task("Walk the dog")
    expect{my_list.mark_complete("Go to the shops")}.to raise_error "This task is not on list"
  end

  it "adds several tasks and marks some complete, then prints remaining" do
    my_list = ToDoList.new
    my_list.add_task("Walk the dog")
    my_list.add_task("Go to the shops")
    my_list.mark_complete("Walk the dog")
    my_list.add_task("Mow lawn")
    my_list.add_task("Fix bike")
    my_list.mark_complete("Go to the shops")
    my_list.add_task("Buy some milk")
    expect(my_list.print_list).to eq "My to do list: Mow lawn, Fix bike, Buy some milk"
  end
end
