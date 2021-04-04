class Sieve
    def initialize(limit)
      @limit = limit
    end

    def primes
        numbers_list = Array(2..@limit)
        numbers_list.each do |p|
            i = p
            while (p * i) <= @limit
                multiple = p * i
                numbers_list.delete(multiple)
                i += 1
            end
            numbers_list
        end

    end
end
