class TicTacToe
	@@game_id = 0
	def initialize()
		puts "Play TicTacToe"
	end

	def game_id
		@@game_id += 1
		puts "#{@@game_id}"
	end

	def createBoard(board)
		puts "The TicTacToe board"
		$board = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"] #board positions, global variable so other methods can use it

		$printedBoard = "\n\t#{$board[0]}  |  #{$board[3]} |  #{$board[6]} 
	           \n    ---------------------
	            \n\t#{$board[1]}  |  #{$board[4]} |  #{$board[7]}
	            \n    --------------------- 
	            \n\t#{$board[2]}  |  #{$board[5]} |  #{$board[8]}
	             \n" #drawing out the board on the command line and storing it in a variable $printedBoard

		puts $printedBoard#printing the board

	    
	    return $board #having method retrun board
	end


	def player()

		finished = true
		
		player = 'x'
		game = false
		turn = 1

		while game != finished

			turn += 1
			puts turn

			puts "Player #{player}, please pick where you want to mark #{player}"

			print "> "

			choice = gets.chomp #player choice
			choice = choice.to_s.upcase #converting it to upper case
			puts "You picked #{choice}"

			i = -1 #this is for changing the values of the array. 
			$board.each do |position| #loop through the array
				i += 1 #changing the value of i with each loop
				if position == choice #if the position is the same as the choice

					$board[i] = "#{player}" #change value of position
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

			if $board[0] == 'x' &&  $board[3] == 'x' && $board[6] == 'x' || $board[0] == 'y' && $board[3] == 'y' && $board[6] == 'y'
				game = finished
				puts "I am the first condition"
				puts "We have a winner"
			elsif $board[1] == 'x'  && $board[4] == 'x'  && $board[7] == 'x' || $board[1] == 'y' && $board[4] == 'y' && $board[7] == 'y'
				game = finished
				puts "I am the second condition"
				puts "We have a winner"
			elsif $board[2] == 'x'  && $board[5] == 'x'  && $board[8] == 'x' || $board[2] == 'y' && $board[5] == 'y' && $board[8] == 'y'
				game = finished
				puts "I am the third condition"
				puts "We have a winner"
			elsif $board[0] == 'x'  && $board[1] == 'x'  && $board[2] == 'x' || $board[0] == 'y' && $board[1] == 'y' && $board[2] == 'y'
				game = finished
				puts "I am the 4th condition"
				puts "We have a winner"
			elsif $board[3] == 'x'  && $board[4] == 'x'  && $board[5] == 'x' || $board[3] == 'y' && $board[4] == 'y' && $board[5] == 'y'
				game = finished
				puts "I am the 5th condition"
				puts "We have a winner"
			elsif $board[6] == 'x'  && $board[7] == 'x'  && $board[8] == 'x' || $board[6] == 'y' && $board[7] == 'y' && $board[8]  == 'y'
				game = finished
				puts "I am the 6th condition"
				puts "We have a winner"
			elsif $board[0] == 'x'  && $board[4] == 'x'  && $board[8] == 'x'  || $board[0] == 'y' && $board[4] == 'y' && $board[8]  == 'y'
				game = finished
				puts "I am the 7th condition"
				puts "We have a winner"
			elsif $board[2] == 'x' && $board[4] == 'x' && $board[6] == 'x' || $board[2] == 'y' && $board[4] == 'y' && $board[6]  == 'y'
				game = finished
				puts "I am the 8th condition"
				puts "We have a winner"
			elsif turn % 2 == 0
				player = 'y'
			elsif turn % 2 != 0
				player = 'x'
			
			end
			if turn >= 9
				puts "game is a draw"
				game = finished
			end
		end
	end
end

a = TicTacToe.new()
a.game_id()
a.createBoard(1)
a.player()