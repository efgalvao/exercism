=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
    def self.abbreviate(phrase)
        initials = ""
        phrase.split(/[ -]/).each do |n|
            if n[0] != " " and n[0] != nil
            initials += n[0].capitalize
            end
        end
        initials
    end
end
