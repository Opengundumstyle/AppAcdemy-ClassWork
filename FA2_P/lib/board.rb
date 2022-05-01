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
       @stacks.any?{|subArr| subArr.count{|el| el == token} == @max_height}
      
  end


  def horizontal_winner?(token)
        
        #  (0...@max_height).each do |col|
        #            streak = 0
        #     (0...@stacks.length).each do |row|

        #             streak += 1 if @stacks[row][col] == token
        #     end

        #      return true if streak == @stacks.length

        #  end

        #  false

       (0...@max_height).each do |i|
          return true if @stacks.all? {|stack| stack[i] == token}
  end
          
          false
  end


  def winner?(token)
    
        vertical_winner?(token) || horizontal_winner?(token)

  end









end
    