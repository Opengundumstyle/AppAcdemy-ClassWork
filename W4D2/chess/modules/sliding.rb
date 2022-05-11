module Sliding
    #self which references to the piece (queen,rook,bishop)
    def horizontal
        #self can move left to right and front to back  #later on inside of queen, rook, bishop, we place limiations on this function based off of how they can move
        #stop if there is something in the way or at the edge of the board 
        row,col = self.pos 
        getboard = self.board
        horizontal_trail = []
        until row > 7 || row < 0 || col > 7 || col < 0 || getboard[row][col] != nil
            
            trail << [row -1,col]
    
        end
        until row > 7 || row < 0 || col > 7 || col < 0 || getboard[row][col] != nil
            
            trail << [row + 1,col]
    
        end
        until row > 7 || row < 0 || col > 7 || col < 0 || getboard[row][col] != nil
            
            trail << [row ,col - 1]
    
        end
        until row > 7 || row < 0 || col > 7 || col < 0 || getboard[row][col] != nil
            
            trail << [row ,col + 1]
    
        end
        
        trail

    end

    diagonal_trail = []
    
    def diagonal
        until row > 7 || row < 0 || col > 7 || col < 0 || getboard[row][col] != nil
            
            diagonal_trail << [row -1, col- 1]
    
        end
        until row > 7 || row < 0 || col > 7 || col < 0 || getboard[row][col] != nil
            
            diagonal_trail << [row + 1, col + 1]
    
        end
        until row > 7 || row < 0 || col > 7 || col < 0 || getboard[row][col] != nil
            
            diagonal_trail << [row -1, col + 1]
    
        end
        until row > 7 || row < 0 || col > 7 || col < 0 || getboard[row][col] != nil
            
            diagonal_trail << [row + 1, col-1]
    
        end





    end
    
        
end