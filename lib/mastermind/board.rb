require "colorize"

module Mastermind
  class Board
    attr_reader :grid, :pins
    def initialize
      @grid = default_grid
      @pins = default_pins
    end

    def default_grid
      Array.new(10) { Array.new(4) }
    end

    def default_pins 
      Array.new(10) { Array.new(4) }
    end

    def the_code
      code = ["1", "2", "3", "4"]
    end

    def display_grid
      puts ""
      puts "=================== THE BOARD ===================="
      puts ""
      0.upto(3) do |i|
        @grid.each do |row|
          if row[i].nil?
            print "  __ ".rjust(4)
          else
            print ("  " + row[i].to_s + " |").rjust(4)
          end
        end
        puts ""
      end
    end

    def display_pins
      puts ""
      puts "==================== THE PINS ===================="
      puts ""
      0.upto(3) do |i|
        @pins.each do |row|
          if row[i] == "red"
            print " ".center(4).on_red + " "
          elsif row[i] == "white"
            print " ".center(4).on_white + " "
          end
        end
        puts ""
      end
      puts "=================================================="
    end

    def set_guess(guess_number, guess)
      0.upto(3) do |i|
        @grid[guess_number][i] = guess[i]
      end
    end

    def set_pins(guess_number, pins)
      pins.each_with_index do |pin, i|
        @pins[guess_number][i] = pin
      end
    end

  end
end