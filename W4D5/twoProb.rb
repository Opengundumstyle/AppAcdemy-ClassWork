def bad_two_sum?(arr,target_sum) # O()
   
end

def okay_two_sum?(arr,target_sum) # O()
    arr.sort
    i = 0
    while i < arr.length - 1
        j = 
end

def two_sum?(arr,target_sum) # O(n)
    obj = {}
    arr.each do |ele|
         ele2 = target_sum - ele
        if !obj[ele] 
              obj[ele2] = ele
        else
            return true
        end
    end
    false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => true
p two_sum?(arr, 10) # => false



#phase 2
#O(n)

def largest_contiguous_subsum(list)# [5,3,-7]

    largestSum = list[0] # 5
    currentSum = list[0]

    (1...list.length ).each do |i| # 
        if currentSum + list[i] <  list[i]
                currentSum = list[i]
                largestSum = currentSum if currentSum > largestSum
        else
            currentSum += list[i]
            largestSum = currentSum if currentSum > largestSum
        end
    end
       
       largestSum
  
end



  



p largest_contiguous_subsum([5,3,-7])
list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])