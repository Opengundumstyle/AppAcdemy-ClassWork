class DynamicDeque < Deque
    
    def initialize(n)
          @max_volume = n
          super()
    end

    def max_volume
         @max_volume
    end
  
    def middle
        return [] if size == 0

         new_arr = []

            if size % 2 == 0
                new_arr << @concealed_array[size/2 - 1]
                new_arr << @concealed_array[size/2]          
            else  
                new_arr << @concealed_array[size/2]
            end
            
        new_arr
       
    end

   def push_back(*n)
      
       if n.size + self.size > max_volume
            raise  'deque is full'
       else
          n.each do |ele|
               super(ele)
          end

          return size

       end

   end

   
   def pop_front(n = 1)
   
   
    final_arr =[]
    n.times{
       
          final_arr << super()
    }

    final_arr
  
  end
  

end