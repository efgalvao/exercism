class SpaceAge
	def initialize(age)
		@age = age
	end

	def on_earth
		space_age = @age / 31557600.0
	end

	def on_mercury
		space_age = (@age / 31557600.0) / 0.2408467
	end 

	def on_venus
		space_age = (@age / 31557600.0) / 0.61519726
	end     

	def on_mars
		space_age = (@age / 31557600.0) / 1.8808158
	end     

	def on_jupiter
		space_age = (@age / 31557600.0) / 11.862615
	end     
	
	def on_saturn
		space_age = (@age / 31557600.0) / 29.447498
	end     
	
	def on_uranus
		space_age = (@age / 31557600.0) / 84.016846
	end     
	
	def on_neptune
		space_age = (@age / 31557600.0) / 164.79132
	end 
end
