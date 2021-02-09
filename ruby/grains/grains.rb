class Grains
    def self.square(place)
        if place > 64 or place <= 0
            raise ArgumentError
        end
        grains = (1..place).inject {|s, n| s * 2}
    end

    def self.total
        total = 1
        partial = 1
        (2..64).each do |n|
            partial = partial * 2
            total += partial
            end 
            total
    end
end
