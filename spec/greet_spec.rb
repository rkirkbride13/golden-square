require 'greet'

RSpec.describe "greet method" do
  it "greets a person" do
    expect(greet("Robbie")).to eq "Hello, Robbie!"
  end
end