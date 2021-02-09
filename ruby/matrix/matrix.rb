=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
    def initialize(source)
        @source = source
    end

    def rows
        matrix = @source.split("\n").map do |line|
            line.strip.split.map(&:to_i)
          end
    end
    def columns
        matrix = @source.split("\n").map do |line|
            line.strip.split.map(&:to_i)
        end
        matrix.transpose.each { |line| line.join(',') }
    end
    
end
