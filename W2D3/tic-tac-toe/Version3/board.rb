class Board

def initialize
   @board = Array.new(3){Array.new(3,"_")}

end

def [](position)
   row,collum = position
   return false if row < 0 || collum < 0
   @board[row][collum]
end

def []=(position,value)
    row,collum = position
    @board[row][collum] = value
end

def valid?(position)
  
    return false if self[position] == false

    true

end


def empty?(position)

     self[position] == "_"

end

def place_mark(position,value)
     if empty?(position) && valid?(position)
        self[position] = value
     else
     raise "invalid input :L"
     end
end

end
