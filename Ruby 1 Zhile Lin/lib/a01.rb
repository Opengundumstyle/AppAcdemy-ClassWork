class Array
  # Write a new `Array#merge_sort` method; it should not modify the
  # array it is called on, but create a new sorted array.
  # **Do NOT use the built-in `Array#sort` or `Array#sort_by` methods in your
  # implementation.**

  def merge_sort(&prc)
     prc ||= Proc.new{|a,b| a<=>b}
     
     return self if self.length <= 1

     mid = self.length / 2
     left = self[0...mid]
     right = self[mid..-1]
     sorted_left = left.merge_sort(&prc)
     sorted_right = right.merge_sort(&prc)

     Array.merge(sorted_left,sorted_right,&prc)

  end

  private
  def self.merge(left, right, &prc)

       merge = []
     until left.empty? || right.empty?
       if prc.call(left[0],right[0]) == -1
         merge << left.shift

       else
          merge << right.shift 
       end

     end

     merge = merge + left + right

  end
end

class Array
  # Write a new `Array#pair_sum(target)` method that finds all pairs of
  # positions where the elements at those positions sum to the target.

  # NB: ordering matters. I want each of the pairs to be sorted
  # smaller index before bigger index. I want the array of pairs to be
  # sorted "dictionary-wise":
  #   [0, 2] before [1, 2] (smaller first elements come first)
  #   [0, 1] before [0, 2] (then smaller second elements come first)

  def pair_sum(target)
     sumArr = []
       (0...self.length).each do |i|
           (i + 1...self.length).each do |j|
                sumArr << [i,j] if self[i] + self[j] == target
           end
       end
       sumArr
  end
end

class Array
  # Write a method that flattens an array to the specified level. If no level
  # is specified, it should entirely flatten nested arrays.

  # **Do NOT use the built-in `Array#flatten` method in your implementation.**

  # Examples:
  # Without an argument:
  # [["a"], "b", ["c", "d", ["e"]]].my_flatten = ["a", "b", "c", "d", "e"]

  # When given 1 as an argument:
  # (Flattens the first level of nested arrays but no deeper)
  # [["a"], "b", ["c", "d", ["e"]]].my_flatten(1) = ["a", "b", "c", "d", ["e"]]

#   def my_flatten(level = nil)
      
#      newArr = self.dup
       
#      return newArr if level == 0

      
#      flat = [] 

#      newArr.each do |el|
#           if level == nil && el.is_a?(Array)
#                 flat += my_flatten

#           elsif  level && el.is_a?(Array)
             
#             flat += my_flatten(level - 1)
        
#           else
#              flat << el

#           end
#      end
     
#     flat

#    end
# end

  def my_flatten(level = nil)
      
     newArr = self.dup
       
     return newArr if level == 0

      
     flat = [] 

     newArr.each do |el|
          if level == nil && el.is_a?(Array)
                flat += el.my_flatten

          elsif  level && el.is_a?(Array)
             
            flat += el.my_flatten(level - 1)
        
          else
             flat << el

          end
     end
     
    flat

   end
end



class String
  # Write a `String#symmetric_substrings` method that returns all
  # substrings which are equal to their reverse image ("abba" ==
  # "abba"). We should only include substrings of length > 1.

  def symmetric_substrings

    subArr = []

        (0...self.length).each do |i|
           (i+1...self.length).each do |j|
                subArr << self[i..j] if self[i..j] == self[i..j].reverse

           end
        end

         subArr
  end

end


# Write a method `nth_prime` that returns the nth prime number. You may wish to
# use an `is_prime?` helper method.

def nth_prime(n)

     return nil if n == 0

      count = 0
      i = 2
      while count < n 
          count += 1 if is_prime?(i)
          i += 1
      end
     return i -1

end

def is_prime?(num)
    return false if num < 2
    
    (2...num).each do |el|
       if num % el == 0 
        return false
       end
    end

    true
    
end

class Array
  # Write an `Array#my_each` method that calls a passed block for each element
  # of the array. 
  # **Do NOT use the built-in `Array#each`, `Array#each_with_index` or 
  # `Array#map` methods in your implementation.**

  def my_each(&prc)
       i = 0
       while i < self.length
         
        prc.call(self[i])

        i += 1

       end

      self
  end
end

class Array
  # Write an `Array#my_select` method that returns an array made up of the
  # elements in the array that return `true` from the given block.
  # **Do NOT use the built-in `Array#select` or `Array#reject` methods in your
  # implementation.**

  def my_select(&prc)
    newArr = []
       
    self.each do |el|
       newArr << el if prc.call(el)
    end

    newArr

  end
end

