require_relative 'piece'
require_relative 'sliding'

class Bishop < Piece

  def get_board

        return self.board

  end
include Sliding
 
def name
   :b
end

def move_dirs
    
    self.diagonal
    
end
 
  
end