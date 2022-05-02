class Board
   
  attr_reader :size
def initialize(n)
   @grid = Array.new(n){Array.new(n,:N)}
   @size = n*n

end

def [](pos)

row,collum = pos
@grid[row][collum] 

end

def []=(pos,value)
row,collum = pos
@grid[row][collum] = value

end


def num_ships
   @grid.map{|row| row.count(:S)}.sum
end



def attack(pos)

  if self[pos] == :S 
      self[pos] = :H
      puts 'you sunk my battleship!' 
      return true

  else
    self[pos] = :X
    return false
  end


end


def place_random_ships
   totalship = @size * 0.25 
   while num_ships < totalship
         ranCol = rand(0...@grid.length)
         ranRow = rand(0...@grid.length)
         
         pos= [ranRow,ranCol]

         self[pos] = :S
   end
   
end


def hidden_ships_grid

    newGrid = Array.new(@grid.length){Array.new(@grid.length)}
    
    @grid.each_index do |i|
       @grid[i].each_index do |j|
              if @grid[i][j] == :X 
            newGrid[i][j] = :X
              else
                newGrid[i][j] = :N
            end
       end
    end

      newGrid

end

def self.print_grid(grid)
   grid.each {|row| puts row.join(" ")}
end

def cheat
    Board.print_grid(@grid)
end

def print
  Board.print_grid(hidden_ships_grid)
end


end