def bucketsort(collection)
  max = collection.max
  min = collection.min
  bucket_size = collection.length
  b = bucket(collection, max, min, bucket_size)
  0.upto bucket_size do |index|
    if !b[index].nil?
      sort(b[index])
    end
  end
  b.delete_if{|element| element.nil?}.flatten
end

def bucket(collection, max, min, bucket_size)
  divider = ((1 + max)/bucket_size).ceil
  b = []
  collection.each do |value|
    hash = (value/divider).floor
    if b[hash]
      b[hash].push(value)
    else
      b[hash] = [value]
    end
  end
  b
end

def sort(collection)
  swap = true
  while swap
    swap = false
    0.upto(collection.length-2) do |index|
      if collection[index] > collection[index + 1]
        collection[index], collection[index + 1] = collection[index + 1], collection[index]
        swap = true
      end
    end
  end
  collection
end

array = [7, 10, 90, 30, 40, 8, 24, 15, 9]
#array = [17, 130, 93, 230, 440, 58, 264, 145, 49, 200]
#array = [22, 45, 12, 8, 10, 6, 72, 81, 33, 18, 50, 14]

#p bucketsort(array)
