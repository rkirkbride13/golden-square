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
    number_of_good_checks = (@checks.count true).to_f
    total_number_of_checks = @checks.length
    (number_of_good_checks / total_number_of_checks) * 100
  end

end

   # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.