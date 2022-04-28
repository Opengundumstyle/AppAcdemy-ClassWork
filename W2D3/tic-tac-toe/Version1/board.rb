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

#*********************************************************************************
#  This method should return a boolean indicating whether or not the specified position
#  does not contain a player's mark.
def empty?(pos)

    row = pos[0]
    collum = pos[1]
   
    return false if @board[row][collum] != '_'
    
    true
end



#*********************************************************************************
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



#*********************************************************************************
# This method should simply print out the board and all of the marks that have been 
# placed on it. Feel free to style the printing as much as you'd like, but be 
# sure to print out each row of the board on a new line. This will help us 
# visualize the board better as we debug or even play the game!

def print
     @board.each do |row|
       puts row.join(" ")
     end

end


# This method should return a boolean indicating whether or not the given mark has 
# completely filled up any row of the grid.

def win_row?(mark)
     @board.any? {|row| row.all?{|el| el == mark}}
end


# This method should return a boolean indicating whether or not the given mark has 
# completely filled up any column of the grid
def win_col?(mark)
    (0...@board[0].length).each do |i|
         win = 0
        (0...@board.length).each do |j|

            win += 1  if  @board[j][i] == mark

         end 
           return true if win ==  @board.length
      end

    false

end


# This method should return a boolean indicating whether or not the given mark has 
# completely filled up either diagonal of the grid.


def win_diagonal?(mark)
     
        i = 0
        j = @board.length - 1 
        k = 0
        z = 0
        diaWin = true

   while  i < @board.length
        diaWin = false if @board[i][j] != mark
        i += 1
        j -= 1
    end

    return true if diaWin == true
    
    diaWin = true

    while  k < @board.length
        diaWin = false if @board[z][k] != mark
        k += 1
        z += 1
    end

      diaWin

end

#This method should return a boolean indicating whether or not the given mark has 
#filled any full row, column, or diagonal.

def win?(mark)

  return true if win_row?(mark) || win_col?(mark) || win_diagonal?(mark)

  false

end 


# This method should return a boolean indicating whether or not there is at least 
# one empty position on the grid.

def empty_positions?
    
    @board.flatten.any?{|el| el == '_'}
    
end



end