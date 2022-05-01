# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
#Part 1  
 def span
     smallNum = self[0]
     largeNum = self[0]
     self.each do |el|
      if  smallNum > el
        smallNum = el

      end

     if largeNum < el
        largeNum = el
      end

     end

     return largeNum - smallNum if self.length > 0

     nil
 end


def average

   return nil if self.length == 0
   
   self.sum * 1.0 / self.length


end


def median

  return nil if self.length == 0

   newArr = self.sort



   if newArr.length % 2 == 0
       return (newArr[((newArr.length )/2) - 1] + newArr[newArr.length/2]) * 1.0 / 2
   else
       return newArr[newArr.length/2]
   end

  end



   def counts

        hash = Hash.new(0)

        self.each do |el|

         hash[el] += 1

        end

        return hash
   end

    

def my_count(value)
    
    count = 0
      self.each do |el|
          count += 1 if el ==value

      end

    count

end


def my_index(value)
   self.each_index do |i|
      return i if self[i] == value
   end

   nil

end

def my_uniq

 newArr = []

 self.each do |el|
   newArr << el unless newArr.include?(el)
 end

 newArr

end


def  my_transpose

  transArr =[]
    (0...self[0].length).each do |i|
           temp = []
         self.each do |subArr|
                temp << subArr[i]
      end
          transArr << temp
    end

    transArr

end





end
