class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    unless ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation
    end
    if first_operand.is_a?(String) || second_operand.is_a?(String)
      raise ArgumentError
    elsif operation == '/' && second_operand == 0
      return "Division by zero is not allowed."
    else
      "#{first_operand} #{operation} #{second_operand} = #{calculator(first_operand, second_operand, operation)}"
    end
  end

  def self.calculator(first, second, operation)
    return first.method(operation).(second)
  end
end

class SimpleCalculator::UnsupportedOperation < StandardError
end
