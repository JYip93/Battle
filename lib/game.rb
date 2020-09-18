#require './player.rb'
class Game

attr_reader :player1, :player2, :current_player

    def initialize(player1, player2)
        @player1 = Player.new(player1)
        @player2 = Player.new(player2)
        @players =[@player1, @player2] 
        @current_player = @player1
    end



  
    def attack(player)
        player.receive_damage
    end
     
    def switch_turns
        @current_player = (@players - [@current_player]).first
    end

    def opponent
        @players.select {|player| player != @current_player}.first
    end
    
   

    
end