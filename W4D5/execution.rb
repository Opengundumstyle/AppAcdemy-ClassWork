
require "byebug"
#phase 1
# O(n**2) time 
def my_min(list)
    small_num = list[0]
   (0...list.length).each do |i|
     (0...list.length).each do |j|
            small_num = list[j] if list[j] < small_num
     end
   end

   small_num

end

# p list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

#phase 2
#O(n) time

    def my_min(list)
        min_num = nil;
        list.each do |el|
         min_num = el if min_num == nil || min_num > el
        end
     
     min_num

    end

#phase 1
#O(nlogn) time

    def largest_contiguous_subsum(list)
         large_consecutive = []
         (0...list.length).each do |i|
             (i...list.length).each do |j|
                  if list[i..j].sum > large_consecutive.sum
                         large_consecutive = list[i..j]
                  end
             end
         end
         
          large_consecutive

        end

# p largest_contiguous_subsum([5,3,-7])


#phase 2
#O(n)

    def largest_contiguous_subsum(list)# [5,3,-7]

        largestSum = list[0] # 5
        currentSum = list[0]

        (1...list.length ).each do |i| # 
            if currentSum + list[i] <  list[i]
                currentSum = list[i]
                 
            else
                currentSum += list[i]
            end

        
            largestSum = currentSum if currentSum > largestSum
        end
           
           largestSum
      
    end


    
      
    


    p largest_contiguous_subsum([5,3,-7])
    list = [-5, -1, -3]
    p largest_contiguous_subsum(list) # => -1 (from [-1])
    list = [2, 3, -6, 7, -6, 7]
    p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])