class Array
	def sum
		if self.empty?
			0
		else
			total = 0
			self.each do |num|
				total += num
			end
			total
		end
	end

	def square
		if self.empty?
			self
		else
			new_square = []
			self.each_with_index do |val, key|
				new_square[key] = val * val
			end
			new_square
		end
	end

	def square!
		self.each_with_index do |val, key|
			self[key] = val * val
		end
		self
	end
end