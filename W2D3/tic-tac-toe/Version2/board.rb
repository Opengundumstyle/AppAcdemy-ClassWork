class Board
   def initialize
      @board = Array.new(3){Array.new(3,"_")}
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

       return true if downDiagonal || upDiagonal

       false

  end

  
 
def win?(mark)
  
return true if win_col?(mark) || win_row?(mark) || win_diagonal?(mark)

false

end 

def empty_positions?
      
   @board.each do |row|

         return true if row.any?{|ele| ele == '_'}

    end

    false

end


end



# class Board
#      def initialize
#          @grid = Array.new(3) { Array.new(3, '_') }
#      end
 
#      def [](pos)
#          row, col = pos
#          @grid[row][col]
#      end
 
#      def []=(pos, val)
#          row, col = pos
#          @grid[row][col] = val
#      end
 
#      def valid?(pos)
#          row, col = pos
#          pos.all? do |i|
#              0 <= i && i < @grid.length
#          end
#      end
 
#      def empty?(pos)
#          self[pos] == '_'
#      end
 
#      def place_mark(pos, mark)
#          raise 'invalid mark' if !valid?(pos) || !empty?(pos)
#          self[pos] = mark
#      end
 
#      def print
#          @grid.each do |row|
#              puts row.join(' ')
#          end
#      end
 
#      def win_row?(mark)
#          @grid.any? { |row| row.all?(mark) }
#      end
 
#      def win_col?(mark)
#          @grid.transpose.any? { |col| col.all?(mark) }
#      end
 
#      def win_diagonal?(mark)
#          left_to_right = (0...@grid.length).all? do |i|
#              pos = [i, i]
#              self[pos] == mark
#          end
 
#          right_to_left = (0...@grid.length).all? do |i|
#              row = i
#              col = @grid.length - 1 - i
#              pos = [row, col]
#              self[pos] == mark
#          end
 
#          left_to_right || right_to_left
#      end
 
#      def win?(mark)
#          win_row?(mark) || win_col?(mark) || win_diagonal?(mark)
#      end
 
#      def empty_positions?
#          indices = (0...@grid.length).to_a
#          positions = indices.product(indices)
#          positions.any? { |pos| empty?(pos) }
#      end
#  end
 