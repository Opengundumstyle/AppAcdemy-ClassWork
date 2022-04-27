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

          
end
