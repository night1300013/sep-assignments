def heapsort(collection)
  new_array = []
  (collection.length - 1).downto 0 do |length|
    maxheap(collection)
    new_array.unshift(collection.pop)
  end

  new_array
end

def maxheap(collection)
  last_index = collection.length - 1
  0.upto (last_index/2-1) do |index|
    if (2*index + 1) <= last_index
      if collection[2*index + 1] > collection[index]
        swap(collection, 2*index + 1, index)
      end
    end
    if (2*index + 2) <= last_index
      if collection[2*index + 2] > collection[index]
        swap(collection, 2*index + 2, index)
      end
    end
  end
  swap(collection, 0, last_index)
  collection
end

def swap(collection, first, second)
  collection[first], collection[second] = collection[second], collection[first]
end

array = [7, 10, 90, 30, 40, 8, 24, 15, 9]
#array = [17, 130, 930, 230, 440, 58, 264, 145, 49]

#p heapsort(array)
