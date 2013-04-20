class Dictionary

	attr_accessor :keywords, :entries

	def initialize
	 	@entries = {}
	end

	def add(options)
		if options.is_a? String
			entries[options] = nil
		else
			options.each do |key, val|
				@entries[key] = val
			end
		end
	end

	def entries
		@entries
	end

	def keywords
		@entries.keys.sort
	end

	def include?(term)
		if @entries.has_key?(term)
			@entries.key(@entries[term])
		end
	end

	def find(phrase)
		list = {}
		@entries.each do |key, val|
			if key.match(/#{phrase}/)
				list[key] = val
			end
		end
		list
	end

	def printable
		@entries.sort.collect do |key, val|
			"[#{key}] \"#{val}\"" 
		end.join("\n")
	end

end