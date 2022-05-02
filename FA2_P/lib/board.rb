require "byebug"

class Board
    
    attr_reader :max_height
  
    # This Board#print method is given for free and does not need to be modified
    # It is used to make your game playable.
    def print
        @stacks.each { |stack| p stack }
    end

   
    def self.build_stacks(n)
        newStack = Array.new(n){Array.new}

    end

    def initialize(stacks,maxheight)
        @max_height = maxheight
        @stacks = Board.build_stacks(stacks)

        if stacks < 4 || maxheight < 4
            raise 'rows and cols must be >= 4'
        end
    
    end

    def add(token,stackIdx)
        if @stacks[stackIdx].length < @max_height
            @stacks[stackIdx] << token
            return true

        else
            return false
        end
    end

  def vertical_winner?(token)
       @stacks.any?{|stack| stack.count(token) == @max_height}
  end

 def horizontal_winner?(token)
     (0...@max_height).each do |i|
         return true if  @stacks.all?{|stack| stack[i] == token}
     end

     false

end

def winner?(token)
    vertical_winner?(token) || horizontal_winner?(token)
end


end
    