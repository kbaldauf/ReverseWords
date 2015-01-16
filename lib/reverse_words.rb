module ReverseWords
	def ReverseWords.run(text)
		if text.nil? || text.length <=0
			puts "Must be given a string containing one or more sentences."
		else
			sentences = text.split('.')
			newSentences = ""
			sentences.each { |sentence|
				newSentences += ReverseWords.reverse(sentence.strip()) }
			puts newSentences.strip()
		end
	end
	
	def ReverseWords.reverse(sentence)
		words = sentence.split()
		reversedSentence = ""
		words.reverse_each { |word| reversedSentence += word + " " }
		return (reversedSentence.strip() + ". ")
	end
end