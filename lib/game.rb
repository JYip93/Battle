class Game

attr_reader :player1, :player2

    def initialize(player1, player2)
        @player1 = Player.new(player1)
        @player2 = Player.new(player2)
        @turn = 0
    end



  
    def attack(player)
        player.receive_damage
    end
     
    def switch_turns
        @turn += 1
    end
    
   

    
end