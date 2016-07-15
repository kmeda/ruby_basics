dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, dictionary)
	result = Hash.new

	for i in (0..phrase.size-1)
		for j in (i..phrase.size-1)
			substring = (phrase[i..j]).downcase
			if dictionary.include?(substring)
				result[substring] = result.fetch(substring, 0) + 1
				puts result
			end
		end	
	end
	return result
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)