
require_relative "knight"
require_relative "bishop"
require_relative "king"
require_relative "rook"
require_relative "pawn"
require_relative "queen"
require_relative "nullpiece"



class Board
def initialize
    @board = Array.new(8){Array.new(8)}
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


def populate(name, pos)
    if valid?(pos) && self[pos].nil?
        
        # self[pos]= Piece.new("Knight",pos)
        
        piece = Piece.new( :K,pos)
        self[pos] = piece.name
        
        
    end
end

def place_pieces
    # (0...@board.length).each do |row|
    #     (0...@board.length).each do |col|
    #         populate([row ,col])
    #     end
    # end
    # return @board
   
    @board[0][1] =  (Knight.new('black',self,[0,1])).class
    @board[0][6]= (Knight.new('black',self,[0,6])).class
    @board[7][6] = (Knight.new('white',self,[7,6])).class
    @board[7][1] = (Knight.new('white',self,[7,1])).class
    @board[0][5] = (Bishop.new('black',self,[0,5])).class
    @board[0][2] = (Bishop.new('black',self,[0,2])).class
    @board[7][5] = (Bishop.new('white',self,[7,5])).class
    @board[7][2] = (Bishop.new('white',self,[7,2])).class
    @board[0][0] = (Rook.new("black",self,[0,0])).class
    @board[0][7] = (Rook.new("black",self,[0,7])).class
    @board[7][7] = (Rook.new("white",self,[7,7])).class
    @board[7][0] = (Rook.new("white",self,[7,0])).class
    @board[0][4]  = (Queen.new("black",self,[0,4])).class
    @board[7][4]  = (Queen.new("white",self,[7,4])).class
    @board[0][3] = (King.new("black",self,[0,3])).class
    @board[7][3] = (King.new("white",self,[7,3])).class
    # generate black pawns
    (0..7).each do |i|
        @board[1][i] = (Pawn.new("black",self,[1,i])).class
    end
    # generate white pawns
    (0..7).each do |i|
        @board[6][i] = (Pawn.new("white",self,[6,i])).class
    end
    @board
      
end

def move_piece(start_pos,end_pos)
    
    if self[start_pos].nil? || !valid?(start_pos) || !valid?(end_pos)
        raise "Error! You cannot move to there sir/mam!"
    else
        self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    end


    # elsif self[end_pos].nil?
    #     raise "error"
    # else
    #     if valid?(end_pos)
    #     end
    #  end
     
    
end
end














