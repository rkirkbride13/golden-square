require 'to_do'
require 'to_do_list'

RSpec.describe 'integration' do
  context "adding instance of Todo class to TodoList" do
    it "adds the ToDo to the list" do
      to_do_list = TodoList.new
      to_do_1 = Todo.new("Walk the dog")
      to_do_list.add(to_do_1)
      expect(to_do_list.incomplete).to eq [to_do_1]
    end

    it "adds multiple tasks" do
      to_do_list = TodoList.new
      to_do_1 = Todo.new("Walk the dog")
      to_do_2 = Todo.new("Go to shop")
      to_do_3 = Todo.new("Eat lunch")
      to_do_list.add(to_do_1)
      to_do_list.add(to_do_2)
      to_do_list.add(to_do_3)
      expect(to_do_list.incomplete).to eq [to_do_1, to_do_2, to_do_3]
    end
  end

  context "tasks marked as complete/incomplete are listed" do
    it "returns list of incomplete tasks" do
      to_do_list = TodoList.new
      to_do_1 = Todo.new("Walk the dog")
      to_do_2 = Todo.new("Go to shop")
      to_do_3 = Todo.new("Eat lunch")
      to_do_list.add(to_do_1)
      to_do_list.add(to_do_2)
      to_do_list.add(to_do_3)
      to_do_2.mark_done!
      expect(to_do_list.incomplete).to eq [to_do_1, to_do_3]
    end

    it "returns list of complete tasks" do
      to_do_list = TodoList.new
      to_do_1 = Todo.new("Walk the dog")
      to_do_2 = Todo.new("Go to shop")
      to_do_3 = Todo.new("Eat lunch")
      to_do_list.add(to_do_1)
      to_do_list.add(to_do_2)
      to_do_list.add(to_do_3)
      to_do_2.mark_done!
      expect(to_do_list.complete).to eq [to_do_2]
    end
  end

  context "give up marks all tasks as complete" do
    it "marks all tasks as complete" do
      to_do_list = TodoList.new
      to_do_1 = Todo.new("Walk the dog")
      to_do_2 = Todo.new("Go to shop")
      to_do_3 = Todo.new("Eat lunch")
      to_do_list.add(to_do_1)
      to_do_list.add(to_do_2)
      to_do_list.add(to_do_3)
      to_do_list.give_up!
      expect(to_do_list.complete).to eq [to_do_1, to_do_2, to_do_3]
    end

    it "marks all tasks as complete, then add another task which will be incomplete" do
      to_do_list = TodoList.new
      to_do_1 = Todo.new("Walk the dog")
      to_do_2 = Todo.new("Go to shop")
      to_do_3 = Todo.new("Eat lunch")
      to_do_4 = Todo.new("Study")
      to_do_list.add(to_do_1)
      to_do_list.add(to_do_2)
      to_do_list.add(to_do_3)
      to_do_list.give_up!
      to_do_list.add(to_do_4)
      expect(to_do_list.complete).to eq [to_do_1, to_do_2, to_do_3]
      expect(to_do_list.incomplete).to eq [to_do_4]
    end
  end
end