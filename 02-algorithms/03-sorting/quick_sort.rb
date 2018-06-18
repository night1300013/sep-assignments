def quicksort(collection)
  low = 0
  high = collection.length - 1
  recursive(collection, low, high)
end

def recursive(collection, low, high)
  if low < high
    pivot = partition(collection, low, high)
    recursive(collection, low, pivot-1)
    recursive(collection, pivot+1, high)
  end
  collection
end

def partition(collection, low, high)
  pivot = low
  low.upto high do |index|
    if collection[index] < collection[high]
      swap(collection, pivot, index)
      pivot += 1
    end
  end
  swap(collection, pivot, high)
  pivot
end

def swap(collection, first_index, second_index)
  temp = collection[first_index]
  collection[first_index] = collection[second_index]
  collection[second_index] = temp
end

array = [7, 10, 90, 30, 40, 8, 24, 15, 9]
#array = [17, 130, 930, 230, 440, 58, 264, 145, 49]

#p quicksort(array)
