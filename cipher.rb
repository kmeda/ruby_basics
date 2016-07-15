def caesar_cipher(phrase, shift_factor)
	cipher = Array.new
	alpha = ("a".."z").to_a
	alphA = ("A".."Z").to_a
	
	phrase.split("").each do |i|
		if alpha.include?(i)
			cipher << alpha[(alpha.index(i) + shift_factor)%26]
		elsif alphA.include?(i)
			cipher << alphA[(alphA.index(i) + shift_factor)%26]
		else
			cipher << i
		end
	end
	
	cipher.join

end


puts caesar_cipher("What a String!", 5)