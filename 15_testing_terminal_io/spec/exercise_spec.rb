require 'exercise'

RSpec.describe InteractiveCalculator do

  it "calculates a value based on user input" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("4").ordered
    expect(terminal).to receive(:puts).with("Please enter another number").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("4 - 3 = 1").ordered
    interactive_calculator = InteractiveCalculator.new(terminal)
    interactive_calculator.run
  end

  it "fails if first input is not a number" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("x").ordered
    interactive_calculator = InteractiveCalculator.new(terminal)
    expect{interactive_calculator.run}.to raise_error "Input must be a number!"
  end

  it "fails if first input is not a number" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("4").ordered
    expect(terminal).to receive(:puts).with("Please enter another number").ordered
    expect(terminal).to receive(:gets).and_return("y").ordered
    interactive_calculator = InteractiveCalculator.new(terminal)
    expect{interactive_calculator.run}.to raise_error "Input must be a number!"
  end
end

