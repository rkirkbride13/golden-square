require 'grammar_stats'

RSpec.describe GrammarStats do
  it "" do
    text = GrammarStats.new
    result = text.check("this is bad")
    expect(result).to eq false
  end
end