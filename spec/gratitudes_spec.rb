require 'gratitudes'

RSpec.describe Gratitudes do
  it 'creates an instance of the Gratitudes class' do
    gratitudes = Gratitudes.new
    result = gratitudes.is_a?(Gratitudes)
    expect(result).to eq true
  end

  it 'adds gratitude of life to empty array' do
    gratitudes = Gratitudes.new
    result = gratitudes.add("life")
    expect(result).to eq ["life"]
  end

  it 'prints gratitudes when format method is called' do
    gratitudes = Gratitudes.new
    gratitudes.add("life")
    gratitudes.add("friends")
    gratitudes.add("family")
    result = gratitudes.format
    expect(result).to eq "Be grateful for: life, friends, family"
  end
end