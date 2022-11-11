require "diary"

RSpec.describe Diary do
  context "Initialized diary" do
    it "has an empty array" do
      diary = Diary.new
      expect(diary.all).to eq []
    end

    it "count words returns 0" do
      diary = Diary.new
      expect(diary.count_words).to eq 0
    end
  end
end