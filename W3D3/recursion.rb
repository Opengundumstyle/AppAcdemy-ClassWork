def iter_range(start, endd)
    arr = []
    
    while(start < endd)
        arr << start
        start += 1
    end
    arr
end

def recur_range(start, endd)
    if start == endd
        return []
    else #assuming start < end
        recur_range(start, endd - 1) << endd - 1
    end
end



def exp(b, n) #assuming no negative n
    n == 0 ? 1 : b * exp(b, n-1)

end

def exp2(b, n)
    if n == 0
        return 1
    elsif n == 1
        return b
    elsif n % 2 == 0 
        a = exp2(b, n/2) 
        return a * a
    else 
        temp = exp2(b, (n-1)/2)
        return b * temp * temp
    end
end


class Array
    def deepdub
        deepArr = []
        self.each do |el|
            if el.is_a? Array
                deepArr << el.deepdub
            else
                deepArr << el
            end
        end
        return deepArr
    end
end


def fibonnaci(n) #assuming n >= 1
    if n== 0
        return []
    elsif n == 1 || n == 2
        return fibonnaci(n-1) << 1
    else 
        a = fibonnaci(n-1)
        return a << a[-1] + a[-2]
    end

end

def binary_search(array, target)
    if array.empty?
        return nil
    end

    mid  = array.length / 2
    left = array[0...mid]
    right = array[mid + 1..-1]

    if array[mid] == target
        return mid
    elsif array[mid] > target
        return binary_search(left, target)
    else
        temp = binary_search(right, target)
        if (temp != nil)
            (left.length + 1) + temp
        else
            return nil
        end
    end
end

def trash_subsets(arr)
    if arr.empty?
        return nil
    end
    if arr.length == 1 #
        return [arr] #
    end

    ans = [arr, []]
    (0...arr.length).each do |i|
        a = arr.dup
        a.delete_at(i)
        ans += trash_subsets(a)
    end
    ans.uniq
end

#make correct_subsets
def subsets(arr)
    if arr.empty?
        return [[]]
    end

    temp = subsets(arr[0...-1])
    ans = temp.deepdub
    temp.each do |ele|
        ans << (ele << next_ele)
    end
    return ans
end





def mergeSort(arr)
    return [] if arr.empty?

    if arr.length == 1
        return arr
    end

     mid = arr.length/2
     left = arr[0...mid]
     right = arr[mid..-1]
     sortedLeft = mergeSort(left)

     sortedRight = mergeSort(right)
     x = merge(sortedLeft,sortedRight)
end



def merge(arr1, arr2)
    i = 0
    j = 0
    subArr = []

    if arr1.empty?
        return arr2
    end
    
    if arr2.empty?
        return arr1
    end

    while i < arr1.length && j < arr2.length
        if arr1[i] <= arr2[j]
            subArr << arr1[i]
            i += 1    
        else
            subArr << arr2[j] 
            j += 1
        end
    end 

    if i >= arr1.length
        subArr += arr2[j..-1]
    else
        subArr += arr1[i..-1]
    end

    subArr
end


p mergeSort([7, 8, 3, 2, 1, 9, 4, 5, 6])
