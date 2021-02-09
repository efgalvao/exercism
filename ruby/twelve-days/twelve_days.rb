class TwelveDays 
    GIFTS = ["a Partridge in a Pear Tree", "two Turtle Doves", "three French Hens",
        "four Calling Birds","five Gold Rings","six Geese-a-Laying","seven Swans-a-Swimming",
        "eight Maids-a-Milking","nine Ladies Dancing","ten Lords-a-Leaping",
        "eleven Pipers Piping","twelve Drummers Drumming"]
    DAYS = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", 
        "eighth", "ninth", "tenth" ,"eleventh", "twelfth"]
        
    def self.song
        r = Array.new()
        DAYS.each_with_index do |n, i|
        if i == 0
            r << "On the #{n} day of Christmas my true love gave to me: #{GIFTS[0]}.\n"
        else
            r << "On the #{n} day of Christmas my true love gave to me: #{GIFTS[1..(i)].reverse.join(", ")}, and #{GIFTS[0]}.\n"
        end 
        end 
    return r.join("\n")
    end
end 
