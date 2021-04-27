# class for changing turn
class Changeturn
  attr_accessor :name
  def  initialize(name)
    @name = name
  end 
  def toggle_player 
    if(@name == "player1")
      @name = "player2"
    else
    @name = "player1"
    end
  end
end

