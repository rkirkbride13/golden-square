class GrammarStats
  def initialize
  end

  def check(text)
    is_first_letter_capital = (text[0] == text[0].capitalize)
    is_last_letter_punctuation = [".","?","!"].include?(text[-1])

    if is_first_letter_capital && is_last_letter_punctuation
      true
    else
      false
    end
  end

end
