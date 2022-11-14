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

end