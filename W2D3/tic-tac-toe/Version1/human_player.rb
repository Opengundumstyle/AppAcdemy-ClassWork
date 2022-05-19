class HumanPlayer


attr_reader :mark

    def initialize(mark)
         @mark = mark
        
    end


    def get_position
       p "#{@mark},pls enter a position in such format: row,col"
       position = gets.chomp.split(',').map{|el| el.to_i}

       if position.length != 2 
        raise "sorry invalid input"
       end

       position 

    end

     

end

