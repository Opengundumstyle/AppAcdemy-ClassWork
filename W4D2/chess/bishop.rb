require_relative 'piece'

class Bishop < Piece
include Sliding
    def move_dirs

        return Sliding.horizontal
        # horizontal && vertical
        # [-1,0], [1,0],[0,-1],[0,1]
        # available position [.....]

      #diagonal 
      #[1,1],[-1,1],[1,-1],[-1,-1]
      #available position [....]
    end
end