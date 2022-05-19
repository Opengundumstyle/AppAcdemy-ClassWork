require_relative 'piece'
require "singleton"

class NullPiece 
   
    include Singleton

    
    def empty?
        return true

    end

    def symbol
        :N 
    end
#     attr_reader :color, :board, :symbol

#     # def _dump(depth)
#     # end


#     # def self._load(str)
#     #     instance.keep = Marshal.load(str)
#     #     instance
#     # end
    
# # def initialize(color, symbol)
# #      @color = color
# #      @symbol = symbol
# # # end
# def initialize(color,board,pos)
#     debugger
#     super
#     @name = '_'
# end




end