require "diary"
require "diary_entry"

RSpec.describe "integration" do
  context "Add entry to diary" do
    it "adds entry into array" do
      diary = Diary.new
      diary_entry = DiaryEntry.new("my_title", "my_contents")
      diary.add(diary_entry)
      expect(diary.all).to eq [diary_entry]
    end
  end

  context "#count_word" do
    it "returns the sum of the length of all the entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title", "my contents")
      diary_entry_2 = DiaryEntry.new("my title", "End of week one")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 6
    end
  end

  context "#reading_time" do
    it "returns the estimated reading time to read the whole diary" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("my title", "my contents")
      diary_entry_2 = DiaryEntry.new("my title", "End of week one")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(2)).to eq 3
    end
  end
end