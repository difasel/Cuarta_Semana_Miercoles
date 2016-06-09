
require 'benchmark'

def fibonacci_iterative(num)
  if num ==0
    com = 0
  else
    nuevo = 0
    com = 1
    for i in 1..num-1
    nuevo = com
    com = nuevo+com
    end
  end
com
end 


def fibonacci_recursive(num)
  if num == 1 || num == 2
    1
  elsif num==0
    0
  else 
    fibonacci_recursive(num-1) + fibonacci_recursive(num-2)
  end
end

# p fibonacci_iterative(0) == 0
# p fibonacci_iterative(1) == 1
# p fibonacci_iterative(2) == 1
# p fibonacci_iterative(3) == 2
# p fibonacci_iterative(4) == 3
# p fibonacci_iterative(5) == 5

# p fibonacci_recursive(0) == 0
# p fibonacci_recursive(1) == 1
# p fibonacci_recursive(2) == 1
# p fibonacci_recursive(3) == 2
# p fibonacci_recursive(4) == 3
# p fibonacci_recursive(5) == 5

puts Benchmark.measure{ 1000.times {fibonacci_recursive(100)}} # este es el metodo que se tarda mas pues hace un arbol de procesos
puts Benchmark.measure{ 1000.times {fibonacci_iterative(100)}} # este es el metodo que se tarda menos 