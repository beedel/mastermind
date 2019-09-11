module Mastermind
  class Board
    attr_reader :grid
    def initialize
      @grid = default_grid
    end

    def default_grid
      Array.new(10) { Array.new(4) }
    end

    def the_code
      code = ["black", "green", "yellow", "red"]
    end

    def display_grid
      0.upto(3) do |i|
        @grid.each do |row|
          if row[i].nil?
            print " __ |"
          else
            print " " + row[i].to_s + " |"
          end
        end
        puts ""
      end
    end

    def set_guess(guess_number, guess)
      0.upto(3) do |i|
        @grid[guess_number][i] = guess[i]
      end
    end

  end
end