module Mastermind
  describe Game do

    context "#initialize" do
      it "initializes a player, the pc and the board" do
        game = Game.new("Tom")
        expect(game.player).to eq "Tom"
      end
    end
  end
end