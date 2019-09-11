require "spec_helper"

module Mastermind
  describe Board do

    context "#initialize" do
      it "initializes the board with a grid" do
        expect { Board.new(grid: "grid") }.to_not raise_error
      end

      it "sets the grid with 11 rows by default" do
        board = Board.new
        expect(board.grid.length).to eq(11)
      end#

      it "creates four things in each row by default" do
        board = Board.new
        board.grid.each do |row|
          expect(row.length).to eq(4)
        end
      end
    end
    
  end
end