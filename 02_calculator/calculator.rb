def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(nums)
	sum = 0
	nums.each do |num|
		sum += num
	end
	sum
end

def multiply(*nums)
	total = 1
	nums.each do |num|
		total = num * total
	end
	total
end

def power(base, exp)
	total = 1
	count = 0
	while count < exp
		total = base * total
		count += 1
	end
	total
end

def factorial(num)
	if num < 0
		"You can't factorial a negative, silly!"
	end

	if num <= 1
		1
	else
		num * factorial(num - 1)
	end
end