def interleave(arr1, arr2)
  new_arr = arr1.zip(arr2).flatten
end
puts interleave([1,2,3], ['a', 'b', 'c'])