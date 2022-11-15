class Diary

  def initialize
    @entries = []
  end

  def add(entry)
    @entries << entry
  end

  def entries
    @entries
  end

  def count_words
    fail "No words to count" if @entries.empty?
    @entries.sum do |entry|
      entry.count_words
    end
  end

  def reading_time(wpm)
    fail "No entries to read" if @entries.empty?
    @entries.sum { |entry| entry.reading_time(wpm)}
  end

  def find_best_entry(wpm, minutes)
    fail "No entries to read" if @entries.empty?
    readable_entries = @entries.select { |entry| entry.reading_time(wpm) <= minutes}
    readable_entries.max { |a, b| a.count_words <=> b.count_words}
  end

  def scan_for_number
    fail "No entries to read" if @entries.empty?
    entries_with_number = @entries.select do |entry|
      entry.contents.include?("07")
    end
    entries_with_number.map {|entry| 
      contents = entry.contents
      zero = contents.index("0")
      seven = contents.index("7")
      contents[zero, 12]}
  end
end