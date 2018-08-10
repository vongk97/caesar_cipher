def caesar_encode (str,shift)
	alphabeth =("a".."z").to_a

	str = str.downcase
	strList = str.split(" ")
	encoded = [] 

	strList.each do |x| #for each word in phrase we want to encode
		word = []
		x.each_char do |s| #for each letter of each word in the phrase calculate new position in alphabet
			
			
			word.push(alphabeth[(alphabeth.index(s)+shift )%26])#take the modulus in case the new value is bigger than the length of alphabet 

		end
		word.push(" ")
		encoded += word
	end

 return encoded

end


puts caesar_encode("Rabbits are Purple", 5).join




