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

  it "should return a string with a number of words, depending on the wpm and number of minutes to read" do
    entry = DiaryEntry.new("Makers", "word " * 5)
    result = entry.reading_chunk(1, 3)
    expect(result).to eq ("word " * 2 + "word")
  end

  it "should return a string with a number of words, depending on the wpm and number of minutes to read" do
    entry = DiaryEntry.new("Makers", "word " * 200)
    result = entry.reading_chunk(50, 2)
    expect(result).to eq ("word " * 99 + "word")
  end
  it "if reading chunk called againg it should return next chunk of words " do
    entry = DiaryEntry.new("Makers", "word " * 100 + "dog " * 100)
    entry.reading_chunk(50, 2)
    result = entry.reading_chunk(50, 2)
    expect(result).to eq ("dog " * 99 + "dog")
  end
  it "if reading chunk was finish it should go back to the start " do
    entry = DiaryEntry.new("Makers", "word " * 100 + "dog " * 100)
    entry.reading_chunk(50, 2)
    entry.reading_chunk(50, 2)
    result = entry.reading_chunk(50, 2)
    expect(result).to eq ("word " * 99 + "word")
  end

end