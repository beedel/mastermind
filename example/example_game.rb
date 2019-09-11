require_relative "../lib/mastermind.rb"

puts "Welcome"
tom = Mastermind::Player.new("Tom")
computer = Mastermind::Computer.new("Mac")

Mastermind::Game.new(tom, computer).play