module Mastermind
  class Player
    attr_reader :name
    def initialize(name = "Human")
      @name = name
    end
  end
end