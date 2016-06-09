def linear_search(n, array)
  no_vacio = false
  for i in 0..array.count-1
    if array[i] == n
      p i
      no_vacio = true
    end
  end
  p nil if !no_vacio
end

# random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
# linear_search(20, random_numbers)
# # => 3
# linear_search(29, random_numbers)
# # => nil

def global_linear_search(w, array)
  array_aux = []#Array.new(array.count, nil)
  for i in 0..array.count-1
    if array[i] == w
    array_aux << i
    end
  end
array_aux
end

arr = "entretenerse".split('')

p global_linear_search("e", arr)
# =>[0, 4, 6, 8, 11]

