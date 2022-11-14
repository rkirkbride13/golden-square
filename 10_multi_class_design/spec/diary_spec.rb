require 'diary'

RSpec.describe Diary do

  it "intializes with an empty array" do
    diary = Diary.new
    expect(diary.entries).to eq []
  end

end