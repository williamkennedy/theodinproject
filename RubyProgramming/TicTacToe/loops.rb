finished = true
player = 'x'
game = false

while game != finished

	puts "Player #{player}, please pick where you want to mark #{player}"

		print "> "

		choice = gets.chomp #player choice
		choice = choice.to_s.upcase #converting it to upper case
		puts "You picked #{choice}"

		i = -1 #this is for changing the values of the array. 
		$board.each do |position| #loop through the array
			i += 1 #changing the value of i with each loop
			if position == choice #if the position is the same as the choice
				puts "You picked #{$board[i]}" 
				$board[i] = '#{player}' #change value of position
				puts $board[i] #print the new value
				
			end
		end
		$printedBoard = "\n\t#{$board[0]}  |  #{$board[3]} |  #{$board[6]} 
	           \n    ---------------------
	            \n\t#{$board[1]}  |  #{$board[4]} |  #{$board[7]}
	            \n    --------------------- 
	            \n\t#{$board[2]}  |  #{$board[5]} |  #{$board[8]}
	             \n" 
		puts $printedBoard  


		game = finished
		puts "Loop has ended"

end

puts "Player #{player}, please pick where you want to mark #{player}"

		print "> "

		choice = gets.chomp #player choice
		choice = choice.to_s.upcase #converting it to upper case
		puts "You picked #{choice}"


		i = -1 #this is for changing the values of the array. 
		$board.each do |position| #loop through the array
			i += 1 #changing the value of i with each loop
			if position == choice #if the position is the same as the choice
				puts "You picked #{$board[i]}" 
				$board[i] = '#{player}' #change value of position
				puts $board[i] #print the new value
				
			end
		end
		$printedBoard = "\n\t#{$board[0]}  |  #{$board[3]} |  #{$board[6]} 
	           \n    ---------------------
	            \n\t#{$board[1]}  |  #{$board[4]} |  #{$board[7]}
	            \n    --------------------- 
	            \n\t#{$board[2]}  |  #{$board[5]} |  #{$board[8]}
	             \n" 
		puts $printedBoard   


