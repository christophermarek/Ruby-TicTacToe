puts ""
puts ""
#board draw showing all positions
puts " 1 | 2 | 3 |"
puts "--------------"
puts " 4 | 5 | 6 |"
puts "--------------"
puts " 7 | 8 | 9 |"

$player1sym = "X"
$player2sym = "O"


def moveSymbol(turn)
	#checks to return player symbol for the right turn
	if turn.even?
		return $player2sym
	else
		return $player1sym
	end
end

def turn(moveNum)
	player = moveSymbol(moveNum)
	puts "Where do you want to move player#{player}?"
	move = gets.chomp.to_i
	move -= 1
	return move

end

class Board
	@@move_list = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
	def initialize(move, symbol)
		@move = move
		@symbol = symbol

	end
	def draw
		if @@move_list[@move] != " "
			puts "move already chosen"
		else
			#put piece onto board
			@@move_list[@move] = @symbol

			#draw board
			puts " " + @@move_list[0] + " |" + " " + @@move_list[1] + " |" + " " + @@move_list[2] + " "
			puts "-----------"
			puts " " + @@move_list[3] + " |" + " " + @@move_list[4] + " |" + " " + @@move_list[5] + " "
			puts "-----------"
			puts " " + @@move_list[6] + " |" + " " + @@move_list[7] + " |" + " " + @@move_list[8] + " "
		end

	end
	def check
		#see if player 1 wins
		if @@move_list[0] == "X" && @@move_list[1] == "X" && @@move_list[2] == "X"
			puts "Player 1 wins"
			$running = false
		elsif @@move_list[3] == "X" && @@move_list[4] == "X" && @@move_list[5] == "X"
			puts "Player 1 wins"
			$running = false
		elsif @@move_list[6] == "X" && @@move_list[7] == "X" && @@move_list[8] == "X"
			puts "Player 1 wins"
			$running = false
		elsif @@move_list[0] == "X" && @@move_list[3] == "X" && @@move_list[6] == "X"
			puts "Player 1 wins"
			$running = false
		elsif @@move_list[1] == "X" && @@move_list[4] == "X" && @@move_list[7] == "X"
			puts "Player 1 wins"
			$running = false
		elsif @@move_list[2] == "X" && @@move_list[5] == "X" && @@move_list[8] == "X"
			puts "Player 1 wins"
			$running = false
		elsif @@move_list[0] == "X" && @@move_list[4] == "X" && @@move_list[8] == "X"
			puts "Player 1 wins"
			$running = false
		elsif @@move_list[2] == "X" && @@move_list[4] == "X" && @@move_list[6] == "X"
			puts "Player 1 wins"
			$running = false
		end
		if @@move_list[0] == "O" && @@move_list[1] == "O" && @@move_list[2] == "O"
			puts "Player 2 wins"
			$running = false
		elsif @@move_list[3] == "O" && @@move_list[4] == "O" && @@move_list[5] == "O"
			puts "Player 2 wins"
			$running = false
		elsif @@move_list[6] == "O" && @@move_list[7] == "O" && @@move_list[8] == "O"
			puts "Player 2 wins"
			$running = false
		elsif @@move_list[0] == "O" && @@move_list[3] == "O" && @@move_list[6] == "O"
			puts "Player 2 wins"
			$running = false
		elsif @@move_list[1] == "O" && @@move_list[4] == "O" && @@move_list[7] == "O"
			puts "Player 2 wins"
			$running = false
		elsif @@move_list[2] == "O" && @@move_list[5] == "O" && @@move_list[8] == "O"
			puts "Player 2 wins"
			$running = false
		elsif @@move_list[0] == "O" && @@move_list[4] == "O" && @@move_list[8] == "O"
			puts "Player 2 wins"
			$running = false
		elsif @@move_list[2] == "O" && @@move_list[4] == "O" && @@move_list[6] == "O"
			puts "Player 2 wins"
			$running = false
		end
	end
	def full
		@count1 = 0
		@count2 = 0
		@@move_list.each do |i|
			if i == "X" || i == "O"
				@count1 += 1
			end
			if i == " " || i == "O"
				@count2 += 1
			end
		if @count1 == 9
			$running = false
			puts "Board Full!"
		end
	end
end
#game loop
counter = 1
$running = true
while $running
	move = turn(counter)
	symbol = moveSymbol(counter)
	position = Board.new(move, symbol)
	position.draw
	position.check
	position.full

	counter += 1

end
end
gets