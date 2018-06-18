require 'benchmark'
require_relative 'bucket_sort'
require_relative 'heap_sort'
require_relative 'quick_sort'

a = []
1.upto 50 do
  a.push(Random.rand(1..1000))
end

p a

Benchmark.bm do |x|
  x.report("bucket sort") { bucketsort(a) }
  x.report("heap sort") { heapsort(a) }
  x.report("quick sort") { quicksort(a) }
end
#
# Benchmark.bm do |y|
#   y.report("Binary Search Tree:") { bst.find(a[0],5000)}
# end
#
# Benchmark.bm do |z|
#   z.report("Binary Search Tree:") { bst.delete(a[0],5000)}
#   z.report("Binary Search Tree:") { bst.delete(a[0],9999)}
#   z.report("Binary Search Tree:") { bst.delete(a[0],3000)}
# end
#
#
#
# Benchmark.bm do |x|
#   x.report("Min Binary Heap") { for i in 1..n-1; mbh.insert(a[0],a[i]); end }
# end
#
# Benchmark.bm do |y|
#   y.report("Min Binary Heap:") { mbh.find(a[0],5000)}
# end
#
# Benchmark.bm do |z|
#   z.report("Min Binary Heap:") { mbh.delete(a[0],5000)}
#   z.report("Min Binary Heap:") { mbh.delete(a[0],9999)}
#   z.report("Min Binary Heap:") { mbh.delete(a[0],3000)}
# end
