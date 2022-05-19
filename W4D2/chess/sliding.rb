require_relative "piece"
module Sliding
    #self which references to the piece (queen,rook,bishop)
  
   


     def straight
        straight_trail = []
    #     #self can move left to right and front to back  #later on inside of queen, rook, bishop, we place limiations on this function based off of how they can move
    #     #stop if there is something in the way or at the edge of the board 
         getboard = self.board

         dirs = [[1,0], [-1,0],[0,-1],[0,1]]

       

         dirs.each do |dir|
         i,j = dir
        
         row,col = self.pos 
         current = getboard[row][col]
         color = current.color 


            until (row > 7 || row < 0 || col > 7 || col < 0 ) 
            
              next_pos = getboard[row + i][col + j]
                if next_pos.empty? == false
                         if color == next_pos.color
                             break
                         else

                            straight_trail  << [row += i,col += j]

                             break
                         end
                end

              

                straight_trail  << [row += i,col += j]
 

            end
        end
        straight_trail.reject do |subarr|
            x, y = subarr 
            x < 0 || x > 7 || y < 0 || y > 7
        end
    end

   
    
     def diagonal
    
            diagonal_trail = []
        #     #self can move left to right and front to back  #later on inside of queen, rook, bishop, we place limiations on this function based off of how they can move
        #     #stop if there is something in the way or at the edge of the board 
             getboard = self.board
             dirs = [[-1,-1], [-1,1],[1,-1],[1,1]]
    
            dirs.each do |dir|
             row,col = self.pos 
              i,j = dir
              
                until (row > 7 || row < 0 || col > 7 || col < 0 ) #|| getboard[row][col].empty?

               
                    diagonal_trail  << [row += i,col += j]


                end
            end
            
            final = diagonal_trail.reject do |subarr|
                    x, y = subarr 
                x < 0 || x > 7 || y < 0 || y > 7
            end

            final.uniq
   


     end


     def get_board

          
     end
      


  
    

    # def test_method

    # return get_board

    # end



        
end