require 'report_length'

RSpec.describe 'report_length method' do
  it "returns lenth of string is 10 when given abcdefghij" do
    expect(report_length("abcdefghij")).to eq "This string was 10 characters long."
  end

  it "returns an error message if an integer is passed to method" do
    expect{report_length(10)}.to raise_error(NoMethodError)
  end

  it "returns length of string is 6 when given Robbie" do
    expect(report_length("Robbie")).to eq "This string was 6 characters long."
  end
end
