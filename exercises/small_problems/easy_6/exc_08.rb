def find_dup(arr)
  arr.detect{ |e| arr.count(e) > 1}
end
puts find_dup([1,5,3,1])