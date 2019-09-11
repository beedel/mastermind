require "spec_helper"

module Mastermind
  describe Cell do

    context "#initialize" do
      it "is initialized with a color of '' by default" do
        peg = Cell.new
        expect(peg.color).to eq ''
      end

      it "can be initialized with a color value 'blue'" do
        peg = Cell.new("blue")
        expect(peg.color).to eq 'blue'
      end
    end
  end
end