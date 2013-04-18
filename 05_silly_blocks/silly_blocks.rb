def reverser
	yield.split.each{|word| word.reverse!}.join(" ")
end

def adder(arg=1)
	yield + arg
end

def repeater(arg=1)
	arg.times do
		yield
	end
end