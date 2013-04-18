def echo(phrase)
	phrase
end

def shout(phrase)
	phrase.upcase
end

def repeat(phrase, times=2)
	count = 1
	result = phrase
	while count < times
		result += " " + phrase
		count += 1
	end
	result
end

def start_of_word(phrase, limit)
	phrase.slice(0, limit)
end

def first_word(phrase)
	phrase.split[0]
end

def titleize(phrase)
	little_words = ["a", "an", "the", "of", "over", "as", "but", "and"]
	phrase.split.each_with_index.map{|word, index| little_words.include?(word) && index > 0 ? word : word.capitalize!}.join(" ")
end