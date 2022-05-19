module Stepping

    def step
        step_trail = []
    #     #self can move left to right and front to back  #later on inside of queen, rook, bishop, we place limiations on this function based off of how they can move
    #     #stop if there is something in the way or at the edge of the board 
         getboard = self.board
         dirs = [[1,0], [-1,0],[0,-1],[0,1],[-1,-1],[-1,1],[1,-1],[1,1]]

        dirs.each do |dir|
            row,col = self.pos 
            i,j = dir
            step_trail  << [row += i,col += j]
        end
        
        step_trail.reject do |subarr|
            x, y = subarr 
            x < 0 || x > 7 || y < 0 || y > 7
        end
    end

   def l_step
    step_trail = []
    dirs = [[1,2], [1,-2],[2,-1],[2,1],[-2,-1],[-1,2],[-1,-2],[-2,1]]
      
    dirs.each do |dir|
        row,col = self.pos 
        i,j = dir
        step_trail  << [row += i,col += j]
    end

    step_trail.reject do |subarr|
        x, y = subarr 
        x < 0 || x > 7 || y < 0 || y > 7
    end


   end


  
        
end