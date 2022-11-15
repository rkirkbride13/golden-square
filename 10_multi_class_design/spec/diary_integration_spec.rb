require 'diary'
require 'diary_entry'

RSpec.describe "diary integration tests" do

  it "lists entries that have been added to diary" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.entries).to eq [entry_1, entry_2]
  end

  it "counts all the words in the diary" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.count_words).to eq 6
  end

  it "calculates the reading time for the whole diary in minutes" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.reading_time(2)).to eq 3
  end

  it "calculates the longest possible entry to read in the time given" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
    entry_3 = DiaryEntry.new("My Title 2", "1 2 3 4 5 6")
    diary.add(entry_1)
    diary.add(entry_2)
    diary.add(entry_3)
    expect(diary.find_best_entry(2, 5)).to eq entry_3
  end

  it "finds any phone numbers that are listed in the contents of an entry" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
    entry_3 = DiaryEntry.new("My Title 2", "some contents 079347284763")
    diary.add(entry_1)
    diary.add(entry_2)
    diary.add(entry_3)
    expect(diary.scan_for_number).to eq ["079347284763"]
  end
  
  it "finds any phone numbers that are listed in the contents of an entry" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
    entry_3 = DiaryEntry.new("My Title 2", "some contents 079347284763")
    entry_4 = DiaryEntry.new("My Title 2", "some 079347284799 contents")
    diary.add(entry_1)
    diary.add(entry_2)
    diary.add(entry_3)
    diary.add(entry_4)
    expect(diary.scan_for_number).to eq ["079347284763", "079347284799"]
  end
end