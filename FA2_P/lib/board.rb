require "byebug"

class Board
    
    
    # This Board#print method is given for free and does not need to be modified
    # It is used to make your game playable.
    def print
        @stacks.each { |stack| p stack }
    end

    def self.build_stacks(numstacks)
       Array.new(numstacks){Array.new([])}
    end 

   def initialize(stacks, maxHeight)

    if  stacks < 4  || maxHeight < 4    #@stacks.length < 4
        
        raise 'rows and cols must be >= 4'
      end

        @max_height = maxHeight
        @stacks =  Board.build_stacks(stacks)
       
   end


    def max_height 
            @max_height
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


      @stacks.any? do |subArr|
         @max_height == subArr.count{|el| el == token}
      end
   
   end




  def horizontal_winner?(token)


    maxlength = @stacks.map{|subArr| subArr.length}.max

       newArr = []
        @stacks.each do |subArr|
            temp = []
          (0...maxlength).each do |i|
                 temp << subArr[i]
            end
             newArr << temp
         end


     tranArr = newArr.transpose

       tranArr.any? do |subArr|
          @stacks.length == subArr.count{|el| el == token}
         end
     end



    def winner?(token)
        return true if vertical_winner?(token) || horizontal_winner?(token)

        false
        
    end







end
