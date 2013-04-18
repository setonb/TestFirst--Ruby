class Timer

	def initialize
	end

	def seconds
		0
	end

	def seconds=(num)
		@secs = num
	end

	def time_string
		if @secs > 60*60
			@hours = (@secs / (60*60)).floor
			@mins = ((@secs % (60*60)) / (60)).floor
			@secs = (@secs % (60))
		elsif @secs > 60
			@hours = 00
			@mins = (@secs / 60).floor
			@secs = (@secs % 60)
		else
			@hours = 00
			@mins = 00
			@secs = @secs
		end
		
		@hours = padded(@hours)
		@mins = padded(@mins)
		@secs = padded(@secs)

		return @hours.to_s + ":" + @mins.to_s + ":" + @secs.to_s	
	end

	def padded(num)
		if num < 10
			@padded = "0" + num.to_s
		else
			@padded = num.to_s
		end
	end

end