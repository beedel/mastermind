require "spec_helper"

module Mastermind
  describe CodePeg do

    context "#initialize" do
      it "can be initialized with '' color value" do
        codepeg = CodePeg.new
        expect(codepeg.color).to eq ""
      end

      it "calls the super initialize method with a color value 'blue'" do
        codepeg = CodePeg.new("blue")
        expect(codepeg.color).to eq "blue"
      end
    end

  end
end