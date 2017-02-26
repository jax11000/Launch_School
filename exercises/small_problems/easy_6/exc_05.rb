def my_reverse(arr)
  getter = -1
  length = arr.length - 1
  new_arr = []
  loop do 
    new_arr << arr.fetch(getter)
    break if (getter * -1) > length
    getter -= 1
  end
  new_arr
end
puts my_reverse([1,2,3,4,5,6,7,8,9])