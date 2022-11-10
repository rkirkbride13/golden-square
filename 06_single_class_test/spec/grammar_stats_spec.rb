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

end