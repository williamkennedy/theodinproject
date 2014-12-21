
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

		puts "Player X, please pick where you want to mark X"

		print "> "

		choice = gets.chomp #player choice
		choice = choice.to_s.upcase #converting it to upper case
		puts "You picked #{choice}"


		i = -1 #this is for changing the values of the array. 
		$board.each do |position| #loop through the array
			i += 1 #changing the value of i with each loop
			if position == choice #if the position is the same as the choice
				puts "You picked #{$board[i]}" 
				$board[i] = 'X' #change value of position
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
	end
end

a = TicTacToe.new()
a.game_id()
a.createBoard(1)
a.player()