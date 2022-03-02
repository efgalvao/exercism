class SumOfMultiples
  attr_reader :numbers

  def initialize(*args)
    @numbers = *args
  end

  def to(limit)
    return 0 if numbers.empty?

    multiples = numbers.map do |number|
      find_multiples(number, limit)
    end
    unique_multiples = multiples.flatten.uniq

    unique_multiples.inject(0) { |sum, number| sum + number }
  end

  private

  def find_multiples(number, limit)
    return 0 if number >= limit

    (1...limit).map do |n|
      number * n < limit ? (number * n) : 0
    end
  end
end
