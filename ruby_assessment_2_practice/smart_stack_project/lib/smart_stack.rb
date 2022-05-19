
require_relative "stack"

class SmartStack < Stack

     def initialize(n)
          @max_size = n 
          super()
     end

     def max_size
          @max_size
     end

     def full?
         
        return true if size == max_size
        false 

     end


     def push(*n)
          
          if n.size + self.size > max_size
              raise 'stack is full'
          else
              n.each do |ele|
                  super(ele)
              end
              size
          end

     end

    def pop(n=1)

       new_arr = []
       n.times{

            new_arr << super()
       }
         
      new_arr

    end




end