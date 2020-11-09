class Microwave
    def initialize(seconds)
        @seconds = seconds
    end

    def timer
        if @seconds < 100 and @seconds > 59
            minutes = 0
            while @seconds >= 60
                @seconds = @seconds - 60
            minutes += 1
            end 
          return time = "%02d:%02d" % [minutes, @seconds]
        end
        if @seconds < 60
            minutes = 0
            return time = "%02d:%02d" % [minutes, @seconds]
        end

        if @seconds >= 100
            numbers = @seconds.to_s.chars.reverse
            seconds = (numbers[0] + numbers[1]).reverse.to_i
            minutes = 0
            while seconds >= 60
                seconds = seconds - 60
                minutes += 1
            end 
            minutes += numbers[2..-1].reverse.join("").to_i
            time = "%02d:%02d" % [minutes, seconds]
        end
    end
    
end
