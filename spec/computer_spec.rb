require "spec_helper"

module Mastermind
  describe Computer do
    
    context "#initialize" do
      it "initializes the computer with default name value 'Computer'" do
        computer = Computer.new
        expect(computer.name).to eq "Computer"
      end
    end
  end
end