# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
#Part 1
#span 
  def span
       smallest = self[0]
       largest = self[0]

      self.each do |el|
           if smallest > el
             smallest = el
           end

           if largest < el
            largest = el
           end
      end

     return largest - smallest if self.length > 0 
     
     nil

    end

#average
   def average
      return self.sum * 1.0 / self.length if self != []

      nil
   end

#median

 def median
    return nil if self.length == 0

    self.sort!

    if self.length % 2 == 0
         leftidx = self.length / 2 - 1 
         rightidx = self.length / 2 
         
         return self[leftidx .. rightidx].sum * 1.0 / 2
    else

        mid = self.length / 2

        return self[mid]

    end

 end
#counts
def counts
   newHash = Hash.new(0)
    self.each do |el|
        newHash[el] += 1
    end

    newHash
end

#*****************************************************************

# Part 2
#my_count
def my_count(value)
    count = 0
    self.each {|el| count += 1 if value == el}
    count
end

#my_index
def my_index(value)
  
  self.each_index {|i| return i  if self[i] == value} 

  nil

end


#my_uniq
def my_uniq
    
newArr = []
    self.each do |el|
        newArr << el unless newArr.include?(el)
    end

newArr

end


#my_transpose

def my_transpose
    transposeArr = []
   (0...self[0].length).each do |i|
          newArr = []
        (0...self.length).each do |j|
               newArr << self[j][i]
        end
         temp = newArr
         transposeArr << temp
    end

  transposeArr
end

end

