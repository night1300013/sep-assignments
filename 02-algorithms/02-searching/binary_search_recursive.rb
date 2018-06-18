def binary_search_recursive(array, n)
  low = 0
  high = array.length-1
  mid = (low + high)/2
  if low > high
    return nil
  elsif array[mid] > n
    high = mid - 1
    binary_search_recursive(array[low..high], n)
  elsif array[mid] < n
    low = mid + 1
    binary_search_recursive(array[low..high], n)
  else
    return mid
  end
  nil
end

array = [*1..10]

puts "11's index: #{binary_search_recursive(array, 11)}"
puts "5's index: #{binary_search_recursive(array, 5)}"
