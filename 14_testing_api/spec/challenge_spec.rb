require 'challenge'

RSpec.describe CatFacts do

  it "gives a random cat fact" do
    fake_requester = double :requester
    expect(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"A cat can sprint at about thirty-one miles per hour.","length":52}')
    cat_fact = CatFacts.new(fake_requester)
    expect(cat_fact.provide).to eq "Cat fact: A cat can sprint at about thirty-one miles per hour."
  end

end