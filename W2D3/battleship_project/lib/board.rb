require "byebug"

class Board


    def initialize(n)
         @grid = Array.new(n){Array.new(n,:N)}
         @size = n * n
    end

    #size ******************
     def size
        @size
     end

     #[]*******************
     def [](position)
          row = position[0]
          collum = position[1]
          @grid[row][collum]
     end
     
     #[]= ********************
     
     def []= (pos, value)
         row,collum = pos
         @grid[row][collum] = value
     end

    #num_ships ********************

    def num_ships

        shipCount  = 0
        
        @grid.each do |subArr|
            subArr.each do |ele|
                shipCount += 1 if ele == :S
            end
        end

        return shipCount
    end
# part 2

# attack
   def attack(pos)
       
       if self.[](pos) == :S  
            self.[]=(pos, :H)
            p 'you sunk my battleship!'
            return true 
       else
         self.[]=(pos, :X)
           return false
       end

    end
#        if self[pos] == :S  
#             self[pos]= :H
#             p 'you sunk my battleship!'
#             return true 
#        else
#          self[pos]= :X
#            return false
#        end
       
#    end
   

#place_random_ships
   def  place_random_ships


       shipNums = @size * 0.25
       n = @grid.length
       
        while self.num_ships < shipNums
            ranRow = rand(0...n)
            ranCol = rand(0...n)
            pos =[ranRow,ranCol]
            self[pos] = :S 
        end
       
   end
 
#hidden_ships_grid
     
def hidden_ships_grid
    copyCatGrid = Array.new(@grid.length){Array.new(@grid.length)}
   copyCatGrid.each_index do |i|
        copyCatGrid[i].each_index do |j|
           if @grid[i][j] == :X 
              copyCatGrid[i][j] = :X
           else
              copyCatGrid[i][j] = :N
           end
        end
    end

     copyCatGrid

end


# print_grid

    def self.print_grid(grid)
        grid.each do |row|
            puts row.join(" ")
        end
        
    end

#cheat

    def cheat
       Board.print_grid(@grid)
    end


#print
    def print 
        Board.print_grid(hidden_ships_grid)
    end

          
end


