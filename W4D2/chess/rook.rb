require_relative 'piece'
require_relative 'sliding'

class Rook < Piece
include Sliding

# @@dir = [[-1,0], [1,0],[0,-1],[0,1]]

# def self.getDir

#      @@dir

# end

attr_reader :name

  def initialize(color, board, pos)
     super
      @name = :R
  end

  def move_dirs
    
       self.straight
       
  end



  #  Rook.diagonal



 
end