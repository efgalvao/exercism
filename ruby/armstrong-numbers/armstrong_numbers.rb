class ArmstrongNumbers 
	def self.include?(number)
		arm = 0
		arm = number.digits.reduce(0) {|s, n| s + n** number.digits.length}
		number ==	arm
  end 
end
