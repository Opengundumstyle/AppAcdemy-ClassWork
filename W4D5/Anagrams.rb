#phase 1

def first_anagram?(str1, str2)
    all_anagrams(str1).include?(str2)
end


#phase 2 O(n)
def second_anagram?(str1, str2)
     str1.each do |el|
        if str2.include?(el)
             eleIdx = str2.index(el)
             str2.delete_at(eleIdx)
     end

     return true if str2.length == 0 

     false
   
end


#phase 3 O(nlog(n))

def third_anagram(str1,str2)
     sortedArr1 = str1.split("").sort
     sortedArr2 = str2.split("").sort
     
     sortedArr1 == sortedArr2

end


#phase 4


def fourth_anagram?(str1,str2)
    hash1 = makehash(str1)
    hash2 =  makehash(str2)
    
    return true if hash1 == hash2
    
    false
    
      
end

def makehash(input)
    
    hash = Hash.new(0)
    str1.each do |el|
    hash[el] += 1
    end
    
end



