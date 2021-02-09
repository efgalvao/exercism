=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
    
    def self.compute(a, b)
        a = a.chars
        b = b.chars
        hamm = 0
        if a.length == b.length
        (0..a.length).each do |n|
            if a[n] != b[n]
                hamm += 1
            end
        end
        else
          raise ArgumentError
        end
        hamm
    end
end
