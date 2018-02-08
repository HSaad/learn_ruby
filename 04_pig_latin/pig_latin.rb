#write your code here
def translate strs
	translateStr = ""
	vowels = ["a", "e", "i", "o", "u"]
	words = strs.split

	words.each do |str|
		if str.start_with?('a','e','i','o','u')
			translateStr += str + "ay "
		elsif str.slice(0) == "q" && str.slice(1) == "u"
			translateStr += str.slice(2..str.length-1) + str.slice(0..1) + "ay "
		elsif !(vowels.include? str.slice(0)) && str.slice(1) == "q" && str.slice(2) == "u"
			translateStr += str.slice(3..str.length-1) + str.slice(0..2) + "ay "
		elsif !(vowels.include? str.slice(1)) && (vowels.include?str.slice(2))
			translateStr += str.slice(2..str.length-1) + str.slice(0..1) + "ay "
		elsif !(vowels.include?str.slice(2)) && !(vowels.include?str.slice(1))
			translateStr += str.slice(3..str.length-1) + str.slice(0..2) + "ay "
		else
			translateStr += str.slice(1..str.length-1) + str.slice(0) + "ay "
		end
	end
	translateStr.strip
end
