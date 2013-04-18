class RPNCalculator

	def initialize
		@numbers = []
		@total = 0
	end

	def push(num)
		@numbers << num
	end

	def plus
		if @numbers.size == 0
			raise("calculator is empty")
		elsif @numbers.size > 1
			first_val = @numbers.pop
			second_val = @numbers.pop
			@total = first_val + second_val
		else
			first_val = @numbers.pop
			@total += first_val
		end
	end

	def minus
		if @numbers.size == 0
			raise("calculator is empty")
		elsif @numbers.size > 1
			first_val = @numbers.pop
			second_val = @numbers.pop
			@total = second_val - first_val
		else
			first_val = @numbers.pop
			@total -= first_val
		end
	end

	def times
		if @numbers.size == 0
			raise("calculator is empty")
		elsif @numbers.size > 1
			first_val = @numbers.pop
			second_val = @numbers.pop
			@total = first_val * second_val
		else
			first_val = @numbers.pop
			@total *= first_val
		end
	end

	def divide
		if @numbers.size == 0
			raise("calculator is empty")
		elsif @numbers.size > 1
			first_val = @numbers.pop
			second_val = @numbers.pop
			@total = second_val.to_f / first_val.to_f
		else
			first_val = @numbers.pop
			@total /= first_val.to_f
		end
	end

	def value
		@total
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
		
	end
end