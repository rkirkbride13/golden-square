require 'grammar_stats'

RSpec.describe GrammarStats do
  it "if first letter is not a capital, it returns false" do
    text = GrammarStats.new
    result = text.check("this is bad")
    expect(result).to eq false
  end

  it "if text does not end with sentence-ending punctuation, it returns false" do
    text = GrammarStats.new
    result = text.check("This is bad")
    expect(result).to eq false
  end

  it "if text does have end with sentence-ending punctuation and first letter is capital it returns true" do
    text = GrammarStats.new
    result = text.check("This is bad.")
    expect(result).to eq true
  end

  it "should return 0 if we only do once check and the check is false" do
    text = GrammarStats.new
    text.check("this is bad.")
    result = text.percentage_good
    expect(result).to eq 0
  end

  it "should return 100 if we only do once check and the check is true " do
    text = GrammarStats.new
    text.check("This is bad.")
    result = text.percentage_good
    expect(result).to eq 100
  end

  it "should return 50 if we have 2xtrue checks and 2xfalse checks" do
    text = GrammarStats.new
    text.check("This is good.")
    text.check("This is good!")
    text.check("This is bad")
    text.check("this is bad!")
    result = text.percentage_good
    expect(result).to eq 50
  end
  
  context "if an empty string is pass to check method" do
    it "fail" do
      text = GrammarStats.new
      expect{text.check("")}.to raise_error "There are no words to check"
    end
  end

  context "if we try to check the percentage_good before anything has been check" do
    it "fails" do
      text = GrammarStats.new
      expect{text.percentage_good}.to raise_error "There are no results to check"
    end
  end
end