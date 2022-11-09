require 'counter'

RSpec.describe Counter do
  it "creates a new instance of the counter class when initialized" do
    counter = Counter.new
    result = counter.is_a?(Counter)
    expect(result).to eq true
  end

  it "reports a value of zero if the add method is never called" do
    counter = Counter.new
    result = counter.report
    expect(result).to eq "Counted to 0 so far."
  end

  it "gives a value of 5 if the add method is called with 5" do
    counter = Counter.new
    result = counter.add(5)
    expect(result).to eq 5
  end

  it "reports a value of 5 if the add method is called with 5 and then reported" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 5 so far."
  end

  it "reports a value of 10 if the add method is called with 5 twice and then reported" do
    counter = Counter.new
    counter.add(5)
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 10 so far."
  end
end