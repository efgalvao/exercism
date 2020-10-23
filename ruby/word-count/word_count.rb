=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end
class Phrase
    def initialize(phrase)
        @phrase = phrase
    end
    def word_count
        h = Hash.new
        words = @phrase.split(/[ ,\n!&@$%^&:.]/)
        words.each do |w|
            w.downcase!
            if w == ""
                next
            end
        if h.has_key?(w)
        h[w] = h[w] + 1
        else
        h[w] = 1
        end
        end
        h
    end
end