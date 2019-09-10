require "spec_helper"

module Mastermind
  describe KeyPeg do

    context "#initialize" do
      it "can be initialized with '' color value" do
        keypeg = KeyPeg.new
        expect(keypeg.color).to eq ""
      end

      it "calls the super initialize method with a color value 'blue'" do
        keypeg = KeyPeg.new("blue")
        expect(keypeg.color).to eq "blue"
      end
    end

  end
end