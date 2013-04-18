class Temperature
	def initialize(temps = {})
		@f = temps[:f]
		@c = temps[:c]
	end
	
	def in_fahrenheit
		@f || ctof
	end
	
	def in_celsius
		@c || ftoc
	end

	def ftoc
		(5.0/9.0) * (@f - 32)
	end

	def ctof
		32 + ((9.0/5.0) * @c)
	end

	# factory methods
	def self.from_fahrenheit(temp)
		new(:f => temp)
	end

	def self.from_celsius(temp)
		new(:c => temp)
	end
end

class Celsius < Temperature
	def initialize(temp)
		super(:c => temp)
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		super(:f => temp)
	end
end