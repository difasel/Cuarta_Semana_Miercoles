def factorial_iterative(num)
  aux = 1
  for i in 1..num
  aux *= i 
  end
  aux
end

p factorial_iterative(5)

def factorial_recursive(num)
  if num == 0
     1
  else 
    num * factorial_recursive(num-1)
  end
end

p factorial_recursive(5)