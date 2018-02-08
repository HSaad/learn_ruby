class Book
# write your code here
	attr_accessor :title

	def title 
		str = ""
		array = @title.split
		array.each do |word|
			if array.index(word) == 0 && str == ""
				str += word.capitalize
			elsif word == "and" || word == "or" || word == "but"
				str += " " + word.downcase
			elsif word == "in" || word == "the" || word == "of"
				str += " " + word.downcase
			elsif word == "a" || word == "an"
				str += " " + word.downcase
			else
				str += " " + word.capitalize
			end
		end
		str.lstrip
	end

end
