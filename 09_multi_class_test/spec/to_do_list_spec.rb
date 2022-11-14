require 'to_do_list'

RSpec.describe TodoList do
  context "initializes with nothing in it" do
    it "is an empty array when calling incomplete" do
      to_do_list = TodoList.new
      expect(to_do_list.incomplete).to eq []
    end

    it "is an empty array when calling complete" do
      to_do_list = TodoList.new
      expect(to_do_list.complete).to eq []
    end

    it "is an empty array when calling complete, after give up called" do
      to_do_list = TodoList.new
      to_do_list.give_up!
      expect(to_do_list.complete).to eq []
    end
  end
end