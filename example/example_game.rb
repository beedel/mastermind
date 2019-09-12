require_relative "../lib/mastermind.rb"


puts "Welcome to Mastermind!".center(100)

puts "1 computer, 1 human. A 4-digit code. 10 guesses."

puts "The game will put a red peg if you guess a number and its location right."

puts "The game will put a white peg if you correctly guess a number but not its location."


puts "Do you have what it takes to crack it?"

tom = Mastermind::Player.new("Tom")
computer = Mastermind::Computer.new("Mac")

Mastermind::Game.new(tom, computer).play