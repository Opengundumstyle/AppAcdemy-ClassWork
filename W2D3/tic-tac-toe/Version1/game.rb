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




def self.play

    while @board.empty_positions?
       @board.print
       pos = @current_Player.get_position
       @board.place_mark(pos,@current_Player.mark)
        if  @board.win?(@current_Player.mark)
            puts "victory for #{current_Player} "
            break
        else
            Game.switch_turn
        end
       
    end

    puts "Draw!"


end



end