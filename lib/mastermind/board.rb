module Mastermind
  class Board
    attr_reader :grid
    def initialize(input = {} )
      @grid = input.fetch(:grid, default_grid)
    end

    def default_grid
      Array.new(11) { Array.new(4) { Cell.new }}
    end
  end
end