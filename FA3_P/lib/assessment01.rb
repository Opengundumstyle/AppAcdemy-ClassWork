class Array
  # Write an `Array#my_inject` method. If my_inject receives no argument, then
  # use the first element of the array as the default accumulator.
  # **Do NOT use the built-in `Array#inject` or `Array#reduce` methods in your 
  # implementation.**

  def my_inject(accumulator = nil, &prc)
     
        accumulator ||= self.shift

          self.each do |el|

             accumulator = prc.call(accumulator,el)

          end
      
     accumulator
  
  end
end


# Define a method `primes(num)` that returns an array of the first "num" primes.
# You may wish to use an `is_prime?` helper method.

def is_prime?(num)
       
      (2...num).each do |el|
          return false if num % el == 0
      end

      true
    
end

def primes(num)
     
     primeArr = []
     
     i = 2
     count = 1
     while count <= num
       
       if is_prime?(i)
             primeArr << i 
             count += 1
       end

       i += 1

     end
      

     primeArr
         

      
end

# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [1] if num == 1
  facs = factorials_rec(num - 1)
  facs << facs[-1] * (num - 1)
  facs
end

class Array
  # Write an `Array#dups` method that will return a hash containing the indices 
  # of all duplicate elements. The keys are the duplicate elements; the values 
  # are arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
      hash = Hash.new{|k,v| k[v] = []}
       self.each_with_index do |el,i|
           hash[el] << i
       end
        
       dubHash = {}

       hash.each do |k,v|
         dubHash[k] = v if v.length > 1
       end

       return dubHash
       
  end

   
end

class String
  # Write a `String#symmetric_substrings` method that returns an array of 
  # substrings that are palindromes, e.g. "cool".symmetric_substrings => ["oo"]
  # Only include substrings of length > 1.

  def symmetric_substrings
    subArr = []
         (0...self.length).each do |i|
              
              (i+1...self.length).each do |j|
                     subArr <<  self[i..j] if (ispalindromes?(self[i..j]))
              end
         end

         subArr
  end

  def ispalindromes?(substr)
       substr.reverse == substr
  end

end

class Array
  # Write an `Array#merge_sort` method; it should not modify the original array.
  # **Do NOT use the built in `Array#sort` or `Array#sort_by` methods in your 
  # implementation.**
  
  def merge_sort(&prc)
    return self if self.length == 1 

      mid = self.length / 2

      left = self[0...mid]
      right = self[mid..-1]

     merge(merge_sort(left),merge_sort(right))
     
      
  end






  private
  def self.merge(left, right, &prc)
      
  end
end
