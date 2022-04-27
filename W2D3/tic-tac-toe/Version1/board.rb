class Board
#init
 def initialize
     @board = Array.new(3){Array.new(3,"_")}
 end



#valid?This method should return a boolean indicating whether or not the specified position is 
#valid for the board, meaning the position is not "out of bounds."
 def valid?(pos)

    row = pos[0]
    collum = pos[1]

    return false if row < 0 || collum < 0
    
    return false if @board[row][collum] == nil

    true

 end


#  This method should return a boolean indicating whether or not the specified position
#  does not contain a player's mark.
def empty?(pos)

    row = pos[0]
    collum = pos[1]
   
    return false if @board[row][collum] != '_'
    
    true
end


# This method should assign the given mark to the specified position of the grid. 
# It should raise an error when the position is not #valid? or not #empty?.
def place_mark(pos, mark)
    row = pos[0]
    collum = pos[1]
    if empty?(pos) && valid?(pos)
        @board[row][collum] = mark
    else
        raise "it's an error!"
    end

end







end