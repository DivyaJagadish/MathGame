class Player
  attr_accessor :life
  def initialize name 
    @life = 3
    @name = name
  end

  def updateLife
   @life -=1;
  end
end
