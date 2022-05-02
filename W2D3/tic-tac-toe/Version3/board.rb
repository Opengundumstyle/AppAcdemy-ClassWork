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

def print
   @board.each do |row|

    puts row.join(" ")

   end

end


def win_row?(mark)
   @board.any?{|row| row.all?{|el| el == mark}}

end


def win_col?(mark)
    length = @board.length 
    (0...length).each do |i|
         return true if @board.all?{|row| row[i] == mark} 
    end
     
    false

end

def win_diagonal?(mark)
     
     left_to_right = (0...@board.length).all? { |i| @board[i][@board.length - 1 - i]  == mark }





     right_to_left = (0...@board.length).all? { |i| @board[i][i]  == mark }


        
      left_to_right || right_to_left

end


def win?(mark)
    
   win_col?(mark) || win_row?(mark) || win_diagonal?(mark)
 
end 

def empty_positions?
    @board.each{|row| return true if row.any?{|el| el == "_"}}

    false

end




end
