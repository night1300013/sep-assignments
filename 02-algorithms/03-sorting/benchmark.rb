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
  x.report("quick sort") { quicksort(a) }
  x.report("heap sort") { heapsort(a) }

end
