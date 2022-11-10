class GrammarStats
  def initialize
    @checks = []
  end

  def check(text)
    is_first_letter_capital = (text[0] == text[0].capitalize)
    is_last_letter_punctuation = [".","?","!"].include?(text[-1])

    if is_first_letter_capital && is_last_letter_punctuation
      @checks.push(true)
      true
    else
      @checks.push(false)
      false
    end
  end

  def percentage_good 
    if @checks.include? true
      100
    else 
      0
    end
  end

end

   # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.