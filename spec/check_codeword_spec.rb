require 'check_codeword.rb'

RSpec.describe "check_codeword method" do
  it "returns Correct! if argument is horse" do
    expect(check_codeword("horse")).to eq "Correct! Come in."
  end

  it "returns Close if first letter is h and last last is e (of argurment)" do
    expect(check_codeword("house")).to eq "Close, but nope."
  end

  it "returns WRONG! if argument doesn't meet either of above tests" do
    expect(check_codeword("doggy")).to eq "WRONG!"
  end
end