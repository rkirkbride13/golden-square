require 'todo'
require 'todo_list'

RSpec.describe "todo and todo_list integration" do

  it "lists any todos added to the list" do
    todo_list = TodoList.new
    todo_1 = Todo.new("Walk dog")
    todo_list.add(todo_1)
    expect(todo_list.list).to eq [todo_1]
  end

  it "lists any todos added to the list" do
    todo_list = TodoList.new
    todo_1 = Todo.new("Walk dog")
    todo_2 = Todo.new("Walk cat")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    expect(todo_list.list).to eq [todo_1, todo_2]
  end

end