require 'benchmark'
def fib(n)
  f0 = 0
  f1 = 1
  return f0 if n == 0
  #return 1 if n == 1

  for i in 0...n-1 do
    temp = f0
    f0 = f1
    f1 = f1 + temp
  end

  f1
end
puts "For loop fib"
print fib(0)
print fib(1)
print fib(2)
print fib(3)
print fib(4)
print fib(5)
print fib(6)
print fib(7)
print fib(8)
print fib(9)
print fib(10)
puts


def fib_recursion(n)
  f0 = 0
  f1 = 1
  return f0 if n == 0
  return f1 if n == 1

  fib_recursion(n-1) + fib_recursion(n-2)
end
puts "recursion fib"
print fib_recursion(0)
print fib_recursion(1)
print fib_recursion(2)
print fib_recursion(3)
print fib_recursion(4)
print fib_recursion(5)
print fib_recursion(6)
print fib_recursion(7)
print fib_recursion(8)
print fib_recursion(9)
print fib_recursion(10)
puts fib_recursion(11)
puts fib_recursion(12)
puts

Benchmark.bm do |x|
  x.report("fib iterative") {fib(20)}
  x.report("fib recursion") {fib(20)}
end
