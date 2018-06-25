# This method takes n arrays as input and combine them in sorted ascending  order
def poorly_written_ruby(*arrays)
 # combined_array = []
 # arrays.each do |array|
 #   array.each do |value|
 #     combined_array << value
 #   end
 # end
 #Get the combined array
  combined_array = arrays.flatten

 #sorted_array = [combined_array.delete_at(combined_array.length-1)]
 # Return the sorted array
  heap_sort(combined_array)

 # for val in combined_array
 #   i = 0
 #   length = sorted_array.length
 #   #while i < sorted_array.length
 #   while i < length
 #     if val <= sorted_array[i]
 #       sorted_array.insert(i, val)
 #       break
 #     #elsif i == sorted_array.length - 1
 #     elsif i == length - 1
 #       sorted_array << val
 #       break
 #     end
 #     i+=1
 #   end
 # end


  # Return the sorted array
  #sorted_array
end

def heap_sort(array)
  maxheap(array)
  last_index = array.length - 1
  last_index.downto 0 do |index|
    swap(array, 0, index)
    heapify(array, 0 , index)
  end
  array
end

def maxheap(array)
  length = array.length
  (length/2-1).downto 0 do |index|
    heapify(array, index, length)
  end
end

def heapify(array, index, length)
  while index < length
    orig_index = index
    leftChild = 2 * orig_index + 1
    rightChild = leftChild + 1

    if leftChild < length && array[leftChild] > array[index]
      index = leftChild
    end

    if rightChild < length && array[rightChild] > array[index]
      index = rightChild
    end

    if orig_index == index
      return
    end

    swap(array, orig_index, index)
  end
end

def swap(array, first, second)
  array[first], array[second] = array[second], array[first]
end

array1 = [0,2,3,4,5,7]
array2 = [1,3,6,3]
array3 = [-1,-3,9,400]

p poorly_written_ruby(array1, array2, array3)
