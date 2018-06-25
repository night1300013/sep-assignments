# This method takes n arrays as input and combine them in sorted ascending  order
 def poorly_written_ruby(*arrays)
   combined_array = []
   arrays.each do |array|
     array.each do |value|
       combined_array << value
     end
   end

   #sorted_array = [combined_array.delete_at(combined_array.length-1)]
   sorted_array = [combined_array.pop]

   for val in combined_array
     i = 0
     length = sorted_array.length
     #while i < sorted_array.length
     while i < length
       if val <= sorted_array[i]
         sorted_array.insert(i, val)
         break
       #elsif i == sorted_array.length - 1
       elsif i == length - 1
         sorted_array << val
         break
       end
       i+=1
     end
   end

   # Return the sorted array
   sorted_array
 end


 array1 = [0,2,3,4,5,7]
 array2 = [1,3,6,3]
 array3 = [-1,-3,9,4]

 p poorly_written_ruby(array1, array2, array3)
