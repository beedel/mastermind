require "spec_helper"

module Mastermind
  describe Peg do

    context "#initialize" do
      it "is initialized with a color of '' by default" do
        peg = Peg.new
        expect(peg.color).to eq ''
      end

      it "can be initialized with a color value 'blue'" do
        peg = Peg.new("blue")
        expect(peg.color).to eq 'blue'
      end
    end
  end
end