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
    entries_with_number = @entries.select {|entry| entry.contents.include?("07")}
    
    entries_with_number.map do |entry| 
      contents = entry.contents
      zero = contents.index("0")
      seven = contents.index("7")
      index_difference = seven - zero
      number = contents[zero, 12]
      if index_difference == 1 && number.count("0123456789") == 12
        number
      end
    end.compact
  end

end