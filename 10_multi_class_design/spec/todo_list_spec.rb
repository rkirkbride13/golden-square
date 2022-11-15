require 'todo_list'

RSpec.describe TodoList do

  context "initializes with an empty array" do
    it "lists an empty array if nothing added" do
      todo_list = TodoList.new
      expect(todo_list.list).to eq []
    end
  end

end