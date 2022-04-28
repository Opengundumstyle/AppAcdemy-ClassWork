# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)
       
      i = num_1

     while i < num_1 * num_2
          
        return i if i % num_1 == 0 && i % num_2 == 0

        i += 1
     end

end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
      mostFreq = str[0..1]
      mostCount = 0 
     
      (0...str.length).each do |i|
             currCount = 0 
           (0...str.length).each do |j|
                currCount += 1 if str[i..i+1] == str[j..j+1]
           end
      
        if mostCount < currCount
            mostCount = currCount
            mostFreq  = str[i..i+1]
        end
            
      end

      mostFreq
    
end


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
         newHash = {}
         self.each do |k,v|
              newHash[v] = k
         end
         newHash
    end


end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
         numberPairCount = 0
         self.each_index do |i|
            (i+1...self.length).each do |j|
                 numberPairCount += 1 if self[i] + self[j] == num
            end
         end

         numberPairCount
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)
     
    end
end
