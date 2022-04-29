
# no_dupes?

# Write a method no_dupes?(arr) that accepts an array as an arg and returns an new array containing 

# the elements that were not repeated in the array.



def no_dupes?(arr)
   dubHash = {}
   arr.each do |el|
     if dubHash[el]
         dubHash[el] += 1
     else
        dubHash[el] = 1
     end
   end

arr.select{|el| dubHash[el] == 1}

   
end

# Examples
p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
p no_dupes?([true, true, true])            # => []