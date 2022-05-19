class Board

attr_reader :size
    # This Board#print method is given for free and does not need to be modified
    # It is used to make your game playable.
    def print
        @grid.each { |row| p row }
    end

def initialize(size)
    @size = size
    @grid = Array.new(size){Array.new(size)}

end

def [](pos)
   row,col = pos
   @grid[row][col]
end

def []= (pos,mark)
    row,col = pos
    @grid[row][col] = mark
end

def complete_row?(mark)
    @grid.any?{|row| row.all?{|el| el == mark}}
    
end

def complete_col?(mark)
     (0...@grid.length).each do |i|
       return true if  @grid.all?{|row| row[i] == mark}
     end

     false

end


def complete_diag?(mark)

   left_to_right = (0...@grid.length).all?{|i| @grid[i][@grid.length - 1 - i] == mark}
   right_to_left = (0...@grid.length).all?{|i| @grid[i][i] == mark}

   left_to_right || right_to_left

end


def winner?(mark)
   
    complete_col?(mark) || complete_row?(mark) || complete_diag?(mark)

end

   





end
