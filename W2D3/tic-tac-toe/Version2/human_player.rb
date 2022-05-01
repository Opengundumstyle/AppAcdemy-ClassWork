class HumanPlayer
   
      attr_reader :mark
      def initialize(mark)
            @mark = mark
      end
       

      def get_position
           puts "player #{@mark} enter two numbers representing a position in the format `row col`" 

           position = gets.chomp.split(' ').map(&:to_i)

          if position.length != 2 
             raise "sorry, that was invalid :("
          else
             p position
             return position
          end
          
      end

     
end