require 'to_do'

RSpec.describe Todo do
  context "#task" do
    it "equals an empty string if initialized with nothing" do
      to_do_1 = Todo.new("")
      expect(to_do_1.task).to eq ""
    end

    it "returns a string when initialized with string" do
      to_do_1 = Todo.new("Walk the dog")
      expect(to_do_1.task).to eq "Walk the dog"
    end
  end

  context "#mark_done!" do
    it "marks a todo as done and returns nothing" do
      to_do_1 = Todo.new("Walk the dog")
      to_do_1.mark_done!
      expect(to_do_1.task).to eq "Done"
    end

    it "marks a todo as done and returns nothing" do
      to_do_1 = Todo.new("Walk the dog")
      expect(to_do_1.mark_done!).to eq "Done"
    end
  end

  context "#done?" do
    it "returns true if task is done" do
      to_do_1 = Todo.new("Walk the dog")
      to_do_1.mark_done!
      expect(to_do_1.done?).to eq true
    end

    it "returns false if task is done" do
      to_do_1 = Todo.new("Walk the dog")
      expect(to_do_1.done?).to eq false
    end
  end
end