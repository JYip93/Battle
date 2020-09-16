class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 50
  end

  def hp
    @hp
  end


  def attack
    @hp-10
  end
  
end