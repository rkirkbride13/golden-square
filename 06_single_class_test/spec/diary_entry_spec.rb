require 'diary_entry'

RSpec.describe DiaryEntry do
  it "should initialize a new diary entry with a title" do
    entry = DiaryEntry.new("Makers", "some text")
    result = entry.title
    expect(result).to eq "Makers"
  end
  it "should initialize a new diary entry with a contents" do
    entry = DiaryEntry.new("Makers", "some text")
    result = entry.contents
    expect(result).to eq "some text"
  end
end