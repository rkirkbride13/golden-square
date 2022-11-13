# File: lib/diary.rb
class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries.push(entry)
  end

  def all
    @entries
  end

  def count_words
    @entries.sum(&:count_words)
  end

  def reading_time(wpm)
    wpm <= 0 ? (fail "This person can not read") : @entries.sum { |entry| entry.reading_time(wpm) }
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.

    fail "This person can not read" if wpm <= 0
    readable_entries = @entries.select { |entry| entry.reading_time(wpm) <= minutes}
    readable_entries.max { |a, b| a.count_words <=> b.count_words }
  end
end