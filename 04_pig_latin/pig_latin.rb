def translate(phrase)
	phrase.split.each_with_index.map{ |word, index|
		if word.match(/\W$/)
			punct = word[-1]
			word = word.chop
		else
			punct = ""
		end
		if word.match(/^[aeiou]/)
			word = word + "ay" + punct
		elsif word.match(/qu/i)
			# end of the "qu" to the end of the word plus the beginnind of the word plus "ay"
			if word.match(/^[A-Z]/)
				word = word[(word.index(/qu/i) + 2), word.length-1].capitalize + word.slice(0, (word.index(/qu/i) + 2)).downcase + "ay" + punct
			else
				word = word[(word.index(/qu/) + 2), word.length-1] + word.slice(0, (word.index(/qu/) + 2)) + "ay" + punct
			end
		else
			if word.match(/^[A-Z]/)
				word.slice(word.index(/[aeiou]/), word.length-1).capitalize + word[0..word.index(/[aeiou]/)-1].downcase + "ay" + punct
			else
				word.slice(word.index(/[aeiou]/), word.length-1) + word[0..word.index(/[aeiou]/)-1] + "ay" + punct
			end
		end
	}.join(" ")
end