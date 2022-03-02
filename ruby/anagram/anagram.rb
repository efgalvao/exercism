class Anagram
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def match(arr)
    result = []
    arr.select do |candidate|
      result << candidate if candidate.downcase.chars.sort == word.chars.sort && candidate.downcase != word
    end
    result
  end
end
