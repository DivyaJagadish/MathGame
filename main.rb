require './player'
require './question'
require './changeturn'

p player1 = Player.new("player1") 
player2 = Player.new("player2") 
question = Question.new(player1.name)
turn = Changeturn.new(player1.name)
question = Question.new(turn.toggle_player())
if(!question.check_answer_correctness())
  turn.name == player1 ? player1.updateLife() :player2.updateLife()
end
p player1
p player2
question = Question.new(turn.toggle_player())