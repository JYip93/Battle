class Player
  attr_reader :name, :hp

  DEFAULT_DAMAGE = 10
  MAX_HP = 50

  def initialize(name, hp = MAX_HP)
    @name = name
    @hp = hp
  end

 

  def receive_damage
    @hp -= DEFAULT_DAMAGE
  end
 
  
end