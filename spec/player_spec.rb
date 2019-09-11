require "spec_helper"

module Mastermind
  describe Player do
    
    context "#initialize" do
      it "initializes a player with default name value 'Human'" do
        player = Player.new
        expect(player.name).to eq "Human"
      end

      it "initializes a player with name 'Bob'" do
        player = Player.new("Bob")
        expect(player.name).to eq "Bob"
      end
    end

    context "#name" do
      it "returns the name of the player" do
        player = Player.new("Tom")
        expect(player.name).to eq "Tom"
      end
    end

  end
end