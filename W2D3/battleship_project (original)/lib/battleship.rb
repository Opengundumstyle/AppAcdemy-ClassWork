require_relative "board"
require_relative "player"

require "byebug"


class Battleship



    #initialize
   def initialize(n)
       
       @player = Player.new
       @board = Board.new(n) 
       
       @remaining_misses = @board.size / 2
       
   end
    
   def board
       @board
   end
    
   def player
      @player
   end
  
   def start_game
        @board.place_random_ships
        puts @board.num_ships
        puts @board.print
        
   end

   def lose?
       if @remaining_misses <= 0
            puts "you lose"
            return true
       else
           return false
       end
   end
   
def win?
     if @board.num_ships == 0
        puts "you win"
        return true
    else
        return false
    end
end

def game_over?

    return true if win? || lose?
    false
    
end

def turn 

   playerInput = @player.get_move
#    debugger
   
     
    
   if  @board.attack(playerInput) == false
       @remaining_misses -= 1
       puts @remaining_misses.to_s
   end

   @board.print
      
   
end



end
