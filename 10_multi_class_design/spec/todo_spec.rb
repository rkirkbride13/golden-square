require 'todo'

RSpec.describe Todo do

  it "prints the task when calling task" do
    todo_1 = Todo.new("Walk dog")
    expect(todo_1.task).to eq "Walk dog"
  end

end