class Squares
	def initialize(number)
		@number = number
	end

	def sum_of_squares
		sumofsq = (0..@number).inject(0) {|s, n| s + n ** 2}
	end

	def square_of_sum
		sqofsum = (0..@number).inject(0) {|s, n| s + n} ** 2
		end

	def difference
		diff = (sum_of_squares - square_of_sum).abs
	end

end