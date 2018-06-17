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


def fib_iterative(n)
  f0 = 0
  f1 = 1
  return f0 if n == 0
  return f1 if n == 1

  fib_iterative(n-1) + fib_iterative(n-2)
end
puts "Iterative fib"
print fib_iterative(0)
print fib_iterative(1)
print fib_iterative(2)
print fib_iterative(3)
print fib_iterative(4)
print fib_iterative(5)
print fib_iterative(6)
print fib_iterative(7)
print fib_iterative(8)
print fib_iterative(9)
print fib_iterative(10)
puts
