require_relative "./mastermind/version"
require_relative "./mastermind/cell"
require_relative "./mastermind/code_peg"
require_relative "./mastermind/key_peg"
require_relative "./mastermind/player"
require_relative "./mastermind/computer"
require_relative "./mastermind/board"
require_relative "./mastermind/game"

module Mastermind
  class Error < StandardError; end
end
