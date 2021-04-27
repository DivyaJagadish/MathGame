class Changeturn
  attr_accessor :name
  def  initialize(name)
    @name = name
  end 
  def toggle_player 
    if(@name == "player1")
      @name = "player2"
      return @name
    end 
    @name = "player1"
    return @name
  end
end

