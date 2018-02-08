#write your code here
def echo (str)
	str
end

def shout str
	str.upcase
end

def repeat (str, num=2)
	((str + " ") * num).strip
end

def start_of_word(str, num)
	str.slice(0..num-1)
end

def first_word str
	array = str.split
	array[0]
end

def titleize str
	array = str.split
	title = ""
	i = 0
	while i < array.length
		if (i == 0 || i == array.length - 1)
			title = title + " " + array[i].capitalize
		elsif array[i].length > 4
			title = title + " " + array[i].capitalize
			
		else
			title = title + " " + array[i].downcase
		end
		i = i + 1
	end
	title.lstrip
end

