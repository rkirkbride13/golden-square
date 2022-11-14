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
    @entries.sum do |entry|
      entry.count_words
    end
  end


end