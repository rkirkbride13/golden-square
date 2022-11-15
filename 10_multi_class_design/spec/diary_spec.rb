require 'diary'

RSpec.describe Diary do
  context "initializes with an empty array" do
    it "intializes with an empty array" do
      diary = Diary.new
      expect(diary.entries).to eq []
    end

    it "fails if count words is called" do
      diary = Diary.new
      expect{diary.count_words}.to raise_error "No words to count"
    end

    it "fails if reading time is called" do
      diary = Diary.new
      expect{diary.reading_time(5)}.to raise_error "No entries to read"
    end

    it "fails if find best entry is called" do
      diary = Diary.new
      expect{diary.find_best_entry(5,6)}.to raise_error "No entries to read"
    end

    it "fails if scan number is called" do
      diary = Diary.new
      expect{diary.scan_for_number}.to raise_error "No entries to read"
    end
  end

end