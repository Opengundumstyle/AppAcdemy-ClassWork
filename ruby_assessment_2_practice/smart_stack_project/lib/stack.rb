class Stack

    def initialize

         @underlying_array = []

    end
  
    def size
         
         @underlying_array.size

    end

    def empty?
   
        return true if @underlying_array.empty?

        false

    end


    def top
 
        @underlying_array[-1]

    end


   def peek(n)

       @underlying_array[-n..-1]

   end
 
   def push(n)
 
       @underlying_array.push(n)
       size
   end

   def pop
   
       return nil if size == 0

       @underlying_array.pop

   end


end


