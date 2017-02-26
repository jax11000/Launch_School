def include?(arr, find)
  i = 0
  while i < arr.length
    if arr[i] == find
      comp = arr[i]
    end
    i += 1
  end
  comp == find
end
puts include?([1,2,3,4,5], 6) == true