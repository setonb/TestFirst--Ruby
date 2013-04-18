class Book

	def initialize
	end

	def title
		@title
	end

	def title=(title)
		little_words = ["a", "an", "the", "of", "over", "as", "but", "and", "in"]		
		@title = title.split.each_with_index.map{|word, index| little_words.include?(word) && index > 0 ? word : word.capitalize! || word.to_i}.join(" ")
	end


end