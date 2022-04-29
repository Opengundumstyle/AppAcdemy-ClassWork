# longest_streak

# Write a method longest_streak(str) that accepts a string as an arg. 
# The method should return the longest streak of consecutive characters in the string. 
# If there are any ties, return the streak that occurs later in the string.
require "byebug"
def longest_streak(str)
  
   longStr = ''
   currStreak = ''

   i  =  0

   while  i < str.length 

        if str[i] == str[i-1] || i == 0

            currStreak += str[i]

        else
            
            currStreak = str[i]

        end

      if currStreak.length >= longStr.length 

                   longStr = currStreak

         end

      
      i += 1
end
         return longStr
end

# Examples
p longest_streak('a')           # => 'a'
p longest_streak('accccbbb')    # => 'cccc'
p longest_streak('aaaxyyyyyzz') # => 'yyyyy
p longest_streak('aaabbb')      # => 'bbb'
p longest_streak('abc')         # => 'c'