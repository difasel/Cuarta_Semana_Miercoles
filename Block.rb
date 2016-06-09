
require 'benchmark'



def fibonacci_recursive(num)
  if num == 1 || num == 2
    1
  elsif num==0
    0
  else 
    fibonacci_recursive(num-1) + fibonacci_recursive(num-2)
  end
end

t1 = Time.now
1000.times {fibonacci_recursive(20)}
sleep(2)
t2 = Time.now 

def time_diff_milli(start, finish)
   (finish - start) * 1000.0
end

p ((time_diff_milli(t1, t2))/1000).to_s + " seg"