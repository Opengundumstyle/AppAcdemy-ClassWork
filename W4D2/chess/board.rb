
require_relative "knight"
require_relative "bishop"
require_relative "king"
require_relative "rook"
require_relative "pawn"
require_relative "queen"
require_relative "nullpiece"



class Board

    attr_accessor :board

    def initialize

        @null = NullPiece.instance
        @board = Array.new(8){Array.new(8,@null)} 
    # Board.place_pieces
end


def [](pos)
    row,col = pos
    @board[row][col] 
end

def []= (pos,value)
    row,col = pos
    @board[row][col] = value
end

def valid?(pos)
    row, col = pos
    if row < 8 &&  row >= 0 && col < 8 && col >= 0 
        return true
    else
        return false
        
    end
end



def place_pieces

    # @board[0][5] = (Bishop.new('black',self,[0,5])).name
    # @board[0][2] = (Bishop.new('black',self,[0,2])).name
    # @board[7][5] = (Bishop.new('white',self,[7,5])).name
    # @board[7][2] = (Bishop.new('white',self,[7,2])).name
    
    # @board[0][1] =  (Knight.new('black',self,[0,1])).name
    # @board[0][6] = (Knight.new('black',self,[0,6])).name
    # @board[7][6] = (Knight.new('white',self,[7,6])).name
    # @board[7][1] = (Knight.new('white',self,[7,1])).name
    
    # @board[0][0] = (Rook.new("black",self,[0,0])).name
    # @board[0][7] = (Rook.new("black",self,[0,7])).name
    # @board[7][7] = (Rook.new("white",self,[7,7])).name
    # @board[7][0] = (Rook.new("white",self,[7,0])).name
    # @board[0][4] = (Queen.new("black",self,[0,4])).name
    # @board[7][4] = (Queen.new("white",self,[7,4])).name
    # @board[0][3] = (King.new("black",self,[0,3])).name
    # @board[7][3] = (King.new("white",self,[7,3])).name
    # # generate black pawns
    # (0..7).each do |i|
    #     @board[1][i] = (Pawn.new("black",self,[1,i])).name
    # end
    # # generate white pawns
    # (0..7).each do |i|
    #     @board[6][i] = (Pawn.new("white",self,[6,i])).name
    # end
    
 @board[0][5] = (Bishop.new('black',self,[0,5]))
    @board[0][2] = (Bishop.new('black',self,[0,2]))
    @board[7][5] = (Bishop.new('white',self,[7,5]))
    @board[7][2] = (Bishop.new('white',self,[7,2]))
    
    @board[0][1] =  (Knight.new('black',self,[0,1]))
    @board[0][6] = (Knight.new('black',self,[0,6]))
    @board[7][6] = (Knight.new('white',self,[7,6]))
    @board[7][1] = (Knight.new('white',self,[7,1]))
    
    @board[0][0] = (Rook.new("black",self,[0,0]))
    @board[0][7] = (Rook.new("black",self,[0,7]))
    @board[7][7] = (Rook.new("white",self,[7,7]))
    @board[7][0] = (Rook.new("white",self,[7,0]))
    @board[0][4] = (Queen.new("black",self,[0,4]))
    @board[7][4] = (Queen.new("white",self,[7,4]))
    @board[0][3] = (King.new("black",self,[0,3]))
    @board[7][3] = (King.new("white",self,[7,3]))
    # generate black pawns
    (0..7).each do |i|
        @board[1][i] = (Pawn.new("black",self,[1,i]))
    end
    # generate white pawns
    (0..7).each do |i|
        @board[6][i] = (Pawn.new("white",self,[6,i]))
    end
   

    @board
      
end

def move_piece(start_pos,end_pos)
    
    if self[start_pos].nil? || !valid?(start_pos) || !valid?(end_pos)
        raise "Error! You cannot move to there sir/mam!"
    else
        self[start_pos], self[end_pos] = @null.symbol , self[start_pos]
    end


    # elsif self[end_pos].nil?
    #     raise "error"
    # else
    #     if valid?(end_pos)
    #     end
    #  end
     
    
  end


end














