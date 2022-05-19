require_relative 'piece'
require_relative 'sliding'

class Queen < Piece 
include Sliding

attr_reader :name

  def initialize(color, board, pos )
      super
      @name = :Q
  end



# Sling.diagonal  
# Sling.horizontal

end 