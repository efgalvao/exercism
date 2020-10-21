class Series
    def initialize(digits)
        @digits = digits
    end

    def slices(size)
        sliced ||= []
        if size > (@digits.length)
            raise ArgumentError
        else
            (0...(@digits.length)).each do |n| 
                if @digits[n...(n + size)].length >= size 
                sliced << @digits[n...(n + size)]
                end
            end 
        end
        sliced
    end
end 

p = Series.new('98273463')
p p.slices(3)

#sliced.delete(n) 