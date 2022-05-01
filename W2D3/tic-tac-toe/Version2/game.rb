
require_relative "human_player.rb"
require_relative "board.rb"


class Game
    
   def initialize(player_1,player_2,n)
         @player_1 = HumanPlayer.new(player_1)
         @player_2 = HumanPlayer.new(player_2)
         @board = Board.new(n)
         @current_player = @player_1
         

   end

   def switch_turn
        if @current_player == @player_1
          @current_player = @player_2
        else
            @current_player = @player_1
        end
   end


   def play

        while @board.empty_positions?
            @board.print
             getmove = @current_player.get_position
             playerLabel = @current_player.mark
             @board.place_mark(getmove,playerLabel)
             
             if @board.win?(playerLabel)
                puts "#{playerLabel} You won bitch"
                return 
             else

                 switch_turn
             end
        end

         puts "sadly its a draw"
    end

end

