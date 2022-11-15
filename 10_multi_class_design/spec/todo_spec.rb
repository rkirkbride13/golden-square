require 'todo'

RSpec.describe Todo do

  it "prints the task when calling task" do
    todo_1 = Todo.new("Walk dog")
    expect(todo_1.task).to eq "Walk dog"
  end

  it "marks task as complete" do
    todo_1 = Todo.new("Walk dog")
    expect(todo_1.mark_complete).to eq true
  end

  it "shows if task is complete or not" do
    todo_1 = Todo.new("Walk dog")
    todo_1.mark_complete
    expect(todo_1.complete?).to eq true
  end

  it "shows if task is complete or not" do
    todo_1 = Todo.new("Walk dog")
    expect(todo_1.complete?).to eq false
  end
end