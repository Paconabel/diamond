class Diamond 
	attr_accessor :letter

	def initialize(letter)
		@letter = letter
	end

	def print_diamond

		letter_choose = @letter

		letters = ('a'.."#{letter_choose}").to_a

		total_letters = letters.size + 1
		letter_number = letters.index("#{letter_choose}")

		group = ""

		letters.each_with_index do |letter,position|

			if position == 0
				line = ( "\n" + ("\s" * total_letters) + "A" + ("\s" * total_letters)) 
			else
				line = (("\s" * (total_letters - position))  + letter.upcase + ("\s" * ((position * 2) - 1)) + letter.upcase + ("\s" * (total_letters - position)))
			end

			group += (line + "\n")
			
		end

		punta_diamante = group.split("\n")
	
		punta_diamante_reverse = punta_diamante.reverse.drop(1)
		
		poem = punta_diamante + punta_diamante_reverse

		@letter = poem.join("\n")

		return @letter

	end	
end

