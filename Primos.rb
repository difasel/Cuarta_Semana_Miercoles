def prime_factors(num)
  array = []
  for i in 2..num
    while num % i == 0
      array << i
      num /= i
    end
  end
  array
end

p prime_factors(4) == [2, 2]
p prime_factors(9) == [3, 3]
p prime_factors(12) == [2, 2, 3]
p prime_factors(34) == [2, 17]
