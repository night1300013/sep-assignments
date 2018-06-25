def heapsort(collection)
  maxheap(collection)
  (collection.length - 1).downto 1 do |last_index|
    swap(collection, 0, last_index)
    heapify(collection, 0, last_index)
  end

  collection
end

def maxheap(collection)
  last_index = collection.length - 1
  (last_index/2-1).downto 0 do |index|
    heapify(collection, index, last_index)
  end
end

def heapify(collection, index, last_index)
  while(index < last_index)
    i = index
    leftChild = 2*i + 1
    rightChild = leftChild + 1
    if leftChild < last_index && collection[leftChild] > collection[index]
      index = leftChild
    end
    if rightChild < last_index && collection[rightChild] > collection[index]
      index = rightChild
    end

    if i == index
      return
    end
    swap(collection, i, index)

    i = index
  end
end


def swap(collection, first, second)
  collection[first], collection[second] = collection[second], collection[first]
end

array = [7, 10, 90, 30, 40, 8, 24, 15, 9]
#array = [17, 130, 930, 230, 440, 58, 264, 145, 49]

# p heapsort(array)
