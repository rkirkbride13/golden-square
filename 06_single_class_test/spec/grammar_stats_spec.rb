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

end