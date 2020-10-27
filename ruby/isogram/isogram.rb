=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end
class Isogram
    def self.isogram?(input)
        input.downcase!
        h = input.scan(/\w/).inject(Hash.new(0)){|h, c| h[c] += 1; h}
        h.each_pair do |k, v|
            if v > 1
                return false
            end
        end
        true
    end
end
