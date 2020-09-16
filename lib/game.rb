class Game

    DEFAULT_DAMAGE = 10

  
    def attack(player)
        player.receive_damage
    end
     

    def receive_damage
        @hp -= DEFAULT_DAMAGE
    end
   

    
end