class RPNCalculator

	def initialize
		@numbers = []
	end

	def push(num)
		@numbers << num
	end

	def plus
		if @numbers.size > 1
			first_val = @numbers.pop
			second_val = @numbers.pop
			sum = first_val + second_val
			@numbers << sum
		else
			raise("calculator is empty")
		end
	end

	def minus
		if @numbers.size > 1
			first_val = @numbers.pop
			second_val = @numbers.pop
			difference = second_val - first_val
			@numbers << difference
		else
			raise("calculator is empty")
		end
	end

	def times
		if @numbers.size > 1
			first_val = @numbers.pop
			second_val = @numbers.pop
			product = first_val * second_val
			@numbers << product
		else
			raise("calculator is empty")
		end
	end

	def divide
		if @numbers.size > 1
			first_val = @numbers.pop
			second_val = @numbers.pop
			quotient = second_val.to_f / first_val.to_f
			@numbers << quotient
		else
			raise("calculator is empty")
		end
	end

	def value
		@numbers.last
	end

	def tokens(string)
		tokens = []
		values = string.split(" ")
		values.each do |val|
			if val.match(/[0-9]/)
				tokens << val.to_i
			elsif val.match(/\+/)
				tokens << :+
			elsif val.match(/\-/)
				tokens << :-
			elsif val.match(/\*/)
				tokens << :*
			elsif val.match(/\//)
				tokens << :/
			end
		end
		tokens
	end

	def evaluate(string)
		calc = RPNCalculator.new
		values = string.split(" ")
		values.each do |val|
			if val.match(/[0-9]/)
				calc.push(val.to_i)
			elsif val.match(/\+/)
				calc.plus
			elsif val.match(/\-/)
				calc.minus
			elsif val.match(/\*/)
				calc.times
			elsif val.match(/\//)
				calc.divide
			end
		end
		calc.value
	end
end