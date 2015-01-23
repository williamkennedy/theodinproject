class Hangman
	def initialize()
		puts "Play Hangman"
		@@randomWord = 0
		@@guessWord = 0
	end	

	def getWord(filename)
		words = []
		File.readlines(filename).each do |line|
			words.push(line.chomp)
		end
		@@randomWord = words.sample #gets a random number from an array
		

		correctWordLength = true
		
		wordLength = false

		while wordLength != correctWordLength #making sure to get a word between 5 and 12 characters

			if @@randomWord.length >= 5 && @@randomWord.length <= 12
				puts @@randomWord
				puts @@randomWord.length
				wordLength = correctWordLength
			else
				@@randomWord = words.sample
				puts @@randomWord
				puts @@randomWord.length
				puts "We are going to find another word"
				wordLength != correctWordLength
			end

		end
	return @@randomWord
	puts @@randomWord
	end	



	def playGame(randomWord)
		puts "This is the word #{randomWord}"
		randomWord.downcase!
		guessWord = randomWord.split(//)#this is the correct word
		
		puts guessWord.inspect #printing out the array

		playerBoard = []

		guessWord.each do
		 playerBoard.push("_")
		end
		puts "This is the player board to guess on"
		puts playerBoard.inspect

		wrongGuess = 0

		while wrongGuess <= 12
		puts "Please guess a letter"
		print "> "
		choice = STDIN.gets.chomp#not using gets.chomp because that returns the first line in the file
			
		


			i = 0
			guessWord.map! { |letter| 
				if(letter == choice)
					playerBoard[i] = choice
					puts "you got a letter correct"
				
				elsif guessWord.include?(choice)
					
					wrongGuess += 1
					puts "You put a wrong move #{wrongGuess}"
					break
				
				end
				i += 1

				}
				puts playerBoard.inspect

			end


		
		puts playerBoard.inspect
	end

	def gameFinshed()
		"The game is over"
	end
end

filename = ARGV.first
@@randomWord = 0
a = Hangman.new()
a.getWord(filename)
a.playGame(@@randomWord)




