=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end
class Raindrops
    def self.convert(x)
      result = ""
        a = (1..x).select { |n|x % n == 0}
      a.each do |n|
        if n.to_i == 3
        result += 'Pling'
        end
        if n.to_i == 5
        result += 'Plang'
        end
        if n.to_i == 7
        result += 'Plong'
        end
        end
        if result.empty?
            x.to_s
        else
            result
        end
    end
end