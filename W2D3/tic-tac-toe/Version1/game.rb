require_relative "board.rb"
require_relative "human_player.rb"

class Game
  
def initialize(player_1,player_2)
     @player_1 = HumanPlayer.new(player_1)
     @player_2 = HumanPlayer.new(player_2)
     @current_Player = @player_1
     @board = Board.new
     
end


def self.switch_turn

    if @current_Player == @player_1
        @current_Player = @player_2
    else
        @current_Player = @player_1
    end

end






end