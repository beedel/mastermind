module Mastermind
  class KeyPeg
    attr_reader :color
    def initialize(color = "")
      @color = color
    end
  end
end