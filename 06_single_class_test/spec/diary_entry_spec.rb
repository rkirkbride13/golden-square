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

  it "should count the number of words in the contents when calling count_words method" do
    entry = DiaryEntry.new("Makers", "some text")
    result = entry.count_words
    expect(result).to eq 2
  end

  it "should count the number of words in the contents when calling count_words method" do
    entry = DiaryEntry.new("Makers", "word " * 200)
    result = entry.count_words
    expect(result).to eq 200
  end

  it "should return a number of minutes of reading time" do
    entry = DiaryEntry.new("Makers", "word " * 200)
    result = entry.reading_time(50)
    expect(result).to eq 4

  end
end