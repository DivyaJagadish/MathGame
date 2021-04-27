require './player'
require './question'
require './turn'

p player1 = Player.new("player1") 

question = Question.new(player1.name)
turn = Turns.new("player")
question = Question.new(turn)