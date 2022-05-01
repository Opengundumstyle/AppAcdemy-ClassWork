require "byebug"

class Board
    
    attr_reader :max_height
    # This Board#print method is given for free and does not need to be modified
    # It is used to make your game playable.
    def print
        @stacks.each { |stack| p stack }
    end

   def self.build_stacks(n)
       newArr = Array.new(n){Array.new}
   end

   def initialize(stacks,maxheight)
       if stacks < 4 || maxheight < 4
           raise 'rows and cols must be >= 4'
       end
  
         @max_height = maxheight
         @stacks = Board.build_stacks(stacks)

   end


   def add(token,idx)
      if @stacks[idx].length < @max_height
           @stacks[idx] << token
           return true

      else
         return false
   
      end

   end


  def vertical_winner?(token)


  end


  def horizontal_winner?(token)


  end




end
    