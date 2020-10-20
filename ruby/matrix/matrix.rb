=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
    def initialize(row)
        @row = row
    end

    def rows
        arr = []
        array = @row.split("\n")
        array.each do |n|
             n = n.split()
             n.map!(&:to_i)
             arr << n
         end
        return arr
    end
    def columns
        arr = []
        array = @row.split("\n")
        array.each do |n|
             n = n.split()
             n.map!(&:to_i)
             arr << n
        end
        column = Array.new(3) {Array.new(3)}
        (0...(arr.length - 1)).each do |x|
                arr.each {|n| column[x] << n[x]}
        end
        column.each {|z| z.compact!}
        column.delete_at(-1)
        column
    end
end
