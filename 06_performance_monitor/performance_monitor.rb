require "time"

def measure(num=1)
	total_time = 0
	start_time = Time.now
	num.times do
		yield
	end_time = Time.now
	total_time = end_time - start_time
	end	
	total_time / num
end