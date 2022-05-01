class Board
   def initialize(n)
      @board = Array.new(n){Array.new(n,"_")}
   end

   
   def[](position)
         row,collum = position
         return false if row < 0 || collum < 0
         @board[row][collum]
   end


   def[]= (position, mark)
        row,collum = position
        @board[row][collum] = mark 
         
   end


   def valid?(position)

        return false if self[position] == false

        true
   end



  def empty?(position)

        return true if self[position] == "_"

        false
  end


  def place_mark(position,mark)
      if empty?(position) && valid?(position)

             self[position] = mark

      else

             raise "this is an error"

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
    #    @board.transpose.one?{|row| row.all?{|el| el == mark}}
      (0...@board[0].length).each do |i|
               win = 0
        (0...@board.length).each do |j|
             win += 1 if @board[j][i] == mark
        end
            return true if win == @board.length
      end

      false
  end 


  def win_diagonal?(mark)
       
       downDiagonal = (0...@board.length).all?{|i| @board[i][i] == mark}
          
       upDiagonal = (0...@board.length).all?{|i| @board[i][@board.length - 1 - i] == mark}

        downDiagonal || upDiagonal

    

  end

  
 
def win?(mark)
  
 win_col?(mark) || win_row?(mark) || win_diagonal?(mark)


end 

def empty_positions?
      
   @board.each do |row|

         return true if row.any?{|ele| ele == '_'}

    end

    false

end


end


