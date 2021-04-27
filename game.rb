require './player'
require './question'
require './changeturn'
class Game 
  def initialize
    puts "Welcome to Two Player Math game"
    @player1 = Player.new("player1") 
    @player2 = Player.new("player2")
    self.continue_game()
  end 

  def continue_game
    turn = Changeturn.new(@player1.name)
    while (@player1.life > 0 && @player2.life >0) do
      puts "----New turn........"
      question = Question.new(turn.name)
      if(!question.check_answer_correctness())
      turn.name == "player1" ? @player1.updateLife() : @player2.updateLife()
      end
      puts "P1 : #{@player1.life}/3 P2: #{@player2.life}/3"
       turn.toggle_player()
    end
    self.end_game()
 end

 def end_game
  if (@player1.life > 0)
    puts "Player 1 wins by #{@player1.life}/3  points"
  else
    puts "Player2 wins by #{@player2.life}/3 points "
  end 

    puts "...Game Over...."
    puts "....Good Bye .... "
 end
end