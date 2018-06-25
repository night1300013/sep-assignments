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
  merge_sort(combined_array)

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

def merge_sort(array)
  length = array.length
  if length <= 1
    array
  else
    mid = length / 2
    left = merge_sort(array[0..mid-1])
    right = merge_sort(array[mid..length])
    merge(left,right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first > right.first
    [right.first] + merge(left, right[1..right.length])
  else
    [left.first] + merge(left[1..left.length], right)
  end
end

array1 = [0,2,3,4,5,7]
array2 = [1,3,6,3]
array3 = [-1,-3,9,4]

p poorly_written_ruby(array1, array2, array3)
