# Define your methods here.


def string_map!(str,&block)
     str.each_char.with_index do |char,i|
        str[i] = block.call(char)
     end 
     str
end


def three?(arr, &block)
   count = 0 
  arr.each do |el|
      count += 1 if block.call(el)
  end
  return true if count == 3
  false
end


def nand_select(arr,prc1,prc2)
   newArr = []
   arr.each do |ele|

    newArr << ele unless prc1.call(ele) && prc2.call(ele)

   end

   newArr
end



def hash_of_array_sum(hash)
    sum = 0
   hash.each do |k,v|
       sum += hash[k].sum
   end
  sum

end


def abbreviate(sentence)
    words = sentence.split(' ')
    newArr = []
    words.each do |word|
       if word.length > 4
          newArr << removeVowel(word)
       else
          newArr << word
       end
    end
   
newArr.join(" ")

end

def removeVowel(word)
   vowel ="aeiouAEIOU"
   newWord = ""
   word.each_char {|char| newWord += char unless vowel.include?(char)}
   return newWord
end


def hash_selector(hash,*nums)
    newHash = {}
    anykey = false
    nums.each do |num|
        if hash[num]
            newHash[num] = hash[num]
            anykey = true
        end
    end

    if anykey == false
        return hash
    else
        return newHash
    end
end