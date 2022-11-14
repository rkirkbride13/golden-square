require 'diary_entry'

RSpec.describe DiaryEntry do

it "prints the title" do
  entry = DiaryEntry.new("My Title 1", "My contents 1")
  expect(entry.title).to eq "My Title 1"
end

it "prints the contents" do
  entry = DiaryEntry.new("My Title 1", "My contents 1")
  expect(entry.contents).to eq "My contents 1"
end

it "counts the words in an entry" do
  entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
  expect(entry_1.count_words).to eq 3
end

end