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

  context "sorts through complete/imcomplete tasks" do
    it "#completed_tasks" do 
      todo_list = TodoList.new
      todo_1 = Todo.new("Walk dog")
      todo_2 = Todo.new("Walk cat")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_1.mark_complete
      expect(todo_list.completed_tasks).to eq [todo_1]
    end

    it "#incompleted_tasks" do 
      todo_list = TodoList.new
      todo_1 = Todo.new("Walk dog")
      todo_2 = Todo.new("Walk cat")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      todo_1.mark_complete
      expect(todo_list.incompleted_tasks).to eq [todo_2]
    end
  end

end