#write your code here
def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum (array)
	sum = 0
	array.each do |i|
		sum = sum + i
	end
	sum
end

def multiply(*numbers)
	numbers.inject(1) { |product, x| product *= x}
end

def power (num1, exponent)
	num1 ** exponent
end

def factorial num
	product = 1
	i = 1
	while i <= num 
		product = product * i
		i = i + 1
	end
	product
end