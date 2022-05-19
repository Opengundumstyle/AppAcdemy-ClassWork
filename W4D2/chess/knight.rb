require_relative 'piece'
require_relative 'stepping'

class Knight < Piece
    include Stepping

    attr_reader :name

    def initialize(color,board,pos)
        super
        @name = :K
    end

    def move_dirs
    
        self.l_step
        
   end

   def moves #possible moves of this piece
        
   end
 


end