def get_most_common_letter(text)
  p "We are making a hash first"
  counter = Hash.new(0)
  p "Which looks like this #{counter}"
  p "We need to only keep letters, so remove other characters"
  text_array = text.chars - [" ", "!", ","]
  text_array.each do |char|
    p "then we seem to be iterating through each character of text"
    p "chararacter is #{char}"
    p "then we are assigning this char (#{char}) a number depending on how many times it appears"
    counter[char] += 1
    p counter
  end
  p "then convert the hash to an array and sorting it"
  counter.to_a.sort_by { |k, v| v }[-1][0]
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"


p get_most_common_letter("the roof, the roof, the roof is on fire!")
p "solution should be 'o'"