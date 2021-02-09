class Clock
    attr_accessor :time, :hour, :minute

    def initialize(hour:00, minute:00, time:0)
    @hour, @minute = calculate(hour, minute)
    end

    def to_s
        x = format("%02d:%02d", @hour, @minute)
    end

    
    def calculate(h, m)
        time= 0
        if m >= 60 or h > 24
            h, m = plus(h, m)
        end 
        if m < 0 or h < 0
            h, m = minus(h, m)
        end
        if h == 24
            h = 0
        end
        return h, m
    end

    def plus(h, m)
        while m >= 60
            h += 1
            m -= 60
        end
        while h > 24
            h -= 24
        end
        return h, m
    end

    def minus(h, m)
        while m < 0
            h -= 1
            m += 60
        end
        while h < 0
            h += 24
        end
        return h, m
    end

    def +(clock1)
        a = Clock.new(hour: self.hour + clock1.hour, minute: self.minute + clock1.minute)
    end

    def -(clock1)
        a = Clock.new(hour: self.hour - clock1.hour, minute: self.minute - clock1.minute)
    end

    def ==(clock2)
        if self.hour == clock2.hour and self.minute == clock2.minute
          true
        else 
            false
        end
    end

end
