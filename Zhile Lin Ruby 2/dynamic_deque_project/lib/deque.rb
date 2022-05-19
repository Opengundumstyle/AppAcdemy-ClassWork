class Deque

   def initialize

       @concealed_array = []

   end


   def size
   
       @concealed_array.length

   end

   def blank?

    return true if size == 0

    false

   end

   def front
       @concealed_array[0]

   end
   
   def back
      @concealed_array[-1]
   end

   def push_back(n)
      @concealed_array.push(n)
      size

   end

   def push_front(n)
      
     @concealed_array.unshift(n)
    size
   end

   def pop_back
       return nil if size == 0
       @concealed_array.pop
   end

   def pop_front 
        return nil if size == 0
        @concealed_array.shift

   end

end