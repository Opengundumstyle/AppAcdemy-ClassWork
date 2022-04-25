# Define your methods here. 
require "byebug"
def first_letter_vowel_count(str)
    vowel = "aeiouAEIOU"
    count = 0
     strArr = str.split(' ')
    strArr.each do |word|
        count += 1 if vowel.include?word[0]
    end

    count

end

def count_true(arr,passproc)
    count = 0
    arr.each {|el| count += 1 if passproc.call(el)}
    count
end


def procformation(arr,proc_1,proc_2,proc_3)
  newArr = []
  arr.each do |el|
     if proc_1.call(el)
        newArr << proc_2.call(el)
     else
        newArr << proc_3.call(el)
     end
  end
  newArr
end


def array_of_array_sum(*arr)
    arr.flatten.sum
 
end

def selective_reverse(str)
     vowels = "aeiouAEIOU"
      strArr = str.split(" ")
      newArr = []
      strArr.each do |word|
         if vowels.include?(word[-1]) || vowels.include?(word[0])
              newArr << word
         else
            newArr << word.reverse
         end
      end
      newArr.join(" ")
end


def hash_missing_keys(hash,*num)
    hashArr = []
    num.each do |key|
       hashArr.push(key) if hash[key] == nil
    end

    hashArr
end