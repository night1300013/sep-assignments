def binary_search_iterative(array, n)
  low = 0
  high = array.length-1

  while low < high
    mid = (low + high)/2
    if array[mid] > n
      high = mid - 1
    elsif array[mid] < n
      low = mid + 1
    else
      return mid
    end
  end
  nil
end

array = [*1..10]

puts "11's index: #{binary_search_iterative(array, 11)}"
puts "5's index: #{binary_search_iterative(array, 5)}"
