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

    







end
