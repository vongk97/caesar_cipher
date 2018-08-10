def caesar_encode (str,shift)
	alphabeth =("a".."z").to_a

	str = str.downcase
	strList = str.split(" ")
	encoded = [] 

	strList.each do |x| 
		word = []
		x.each_char do |s|
			
			
			word.push(alphabeth[(alphabeth.index(s)+shift )%26])

		end
		word.push(" ")
		encoded += word
	end

 return encoded

end


#puts caesar_encode("Rabbits are Purple", 5).join

puts caesar_encode("very", 5).join


