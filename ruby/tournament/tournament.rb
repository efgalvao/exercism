
class Tournament

	def self.tally(input)
		r = "Team                           | MP |  W |  D |  L |  P\n"			
		if input.length > 10
			# print input.class
			input = input.split(";").map! do |n| 
			n = [n]
			n <<  {:played => 0, :wins => 0, :draws => 0, :losses => 0, :points => 0}
			end
			c = self.calculate(input)
			c.each do |n|
			# puts n
			r << "#{n[0]} #{" " * (31 - n[0].length)}|  #{n[1][:played]} |  #{n[1][:wins]} |  #{n[1][:draws]} | #{n[1][:losses]}  |  #{n[1][:points]}\n"
			end
		end
		r
	end 

	private

def self.calculate(table)
	if table[2][0] == "win"
		table[0][1][:played] += 1
		table[0][1][:wins] += 1
		table[0][1][:points] +=  3
		table[1][1][:played] += 1 
		table[1][1][:losses] += 1
	end 
	if table[2] == "loss"
		table[0][:played] += 1 
		table[0][:losses] += 1
		table[1][:played] += 1 
		table[1][:win] += 1
		table[1][:points] +=  3
	end 
	if table[2] == "draw"
		table[0][:played] += 1 
		table[1][:played] += 1 
		table[0][:draws] += 1
		table[1][:draws] += 1
		table[0][:points] += 1
		table[1][:points] += 1
	end
	table.delete_at(2)
	return table
end 
end

# Tournament.tally("Allegoric Alaskans;Blithering Badgers;win")