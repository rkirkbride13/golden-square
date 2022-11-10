require 'diary_entry'

RSpec.describe DiaryEntry do
  it "should initialize a new diary entry" do
    entry = DiaryEntry.new("Makers", "some text")
    result = entry.title
    expect(result).to eq "Makers"
  end
end