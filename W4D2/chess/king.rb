require_relative 'piece'
require_relative 'stepping'

class King < Piece
    include Stepping

    attr_reader :name

    def initialize(color,board,pos)
        super(color,board,pos)
        @name = :King
    end

    def move_dirs
        self.step
    end



end