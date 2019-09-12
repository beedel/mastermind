module Mastermind
  class Game
    attr_reader :player, :computer, :board
    def initialize(player, computer = Computer.new, board = Board.new)
      @player = player
      @computer = computer
      @board = board
    end

    def solicit_move
      "#{player.name}: enter your guess . . ."
      guess = []
      print "1:"
      guess[0] = gets.chomp
      print "2:"
      guess[1] = gets.chomp
      print "3:"
      guess[2] = gets.chomp
      print "4:"
      guess[3] = gets.chomp
      guess
    end

    def game_over
      return :winner if winner?
      # game not over code
      false
    end

    def find_pins(guess)
      pins = []

      guess.each_with_index do |guess, i|
        if guess == board.the_code[i]
          pins << "red"
        elsif board.the_code.include?(guess)
          pins << "white"
        end
      end
      pins
    end

    def winner?(guess_number, guess)
      guess.each_index do |index|
        if guess[index] == board.the_code[index]
          next
        else
          return false
        end
      end
      true
    end

    def game_over_message
      return "#{player.name} won!" if board.game_over == :winner
    end

    def play
      i = 0
      while i < 10 
        board.display_grid
        board.display_pins
        puts "Guess the code, #{player.name}."
        guess = solicit_move

        if winner?(i, guess)
          puts "You won!"
          break
        else
          pins = find_pins(guess)
          board.set_guess(i, guess)
          board.set_pins(i, pins)
          i += 1
        end   
      end   
    end

  end
end