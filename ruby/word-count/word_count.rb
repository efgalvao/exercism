=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
class Phrase
    def initialize(string)
      @input = string
    end
  
    def words
      @input.downcase.scan(/\b[\w']+\b/)
    end
  
    def word_count
      words.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
    end
  end
